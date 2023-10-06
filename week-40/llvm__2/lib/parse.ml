let initLexer (lexbuf : Lexing.lexbuf) =
  (* obs that we need to initialize the pos_fname field ourselves *)
  lexbuf.lex_curr_p <- lexbuf.lex_curr_p;
  (input, lexbuf)

let from_string f s =
  let lexbuf = Lexing.from_string s in
  let _, filebuf = initLexer lexbuf in
  let parseRes =
    try f Lllexer.token filebuf with
    | Lllexer.Error msg ->
        Printf.eprintf "%s%!" msg;
        failwith "lex"
    | Llparser.Error ->
        let pos1 = Lexing.lexeme_start_p filebuf in
        let pos2 = Lexing.lexeme_end_p filebuf in
        let lexeme = Lexing.lexeme filebuf in
        Printf.fprintf stderr "%s:%d:%d - %d:%d: syntax error '%s'\n"
          pos1.pos_fname pos1.pos_lnum
          (pos1.pos_cnum - pos1.pos_bol)
          pos2.pos_lnum
          (pos2.pos_cnum - pos2.pos_bol + 1)
          lexeme;
        failwith "par"
  in
  parseRes

let from_file filename =
  let input = open_in filename in
  let filebuf = Lexing.from_channel input in
  let _, filebuf = initLexer filebuf in
  let parseRes =
    try Llparser.prog Lllexer.token filebuf with
    | Lllexer.Error msg ->
        Printf.eprintf "%s%!" msg;
        failwith "lex"
    | Llparser.Error ->
        let pos1 = Lexing.lexeme_start_p filebuf in
        let pos2 = Lexing.lexeme_end_p filebuf in
        let lexeme = Lexing.lexeme filebuf in
        Printf.fprintf stderr "%s:%d:%d - %d:%d: syntax error '%s'\n"
          pos1.pos_fname pos1.pos_lnum
          (pos1.pos_cnum - pos1.pos_bol)
          pos2.pos_lnum
          (pos2.pos_cnum - pos2.pos_bol + 1)
          lexeme;
        failwith "par"
  in
  parseRes

let%test "prog0" =
  from_string Llparser.prog "define i64 @zero () {\n ret i64 0\n}"
  = {
      tdecls = [];
      extgdecls = [];
      gdecls = [];
      extfuns = [];
      fdecls =
        [
          ( Symbol.symbol "zero",
            {
              fty = ([], I64);
              param = [];
              cfg =
                ({ insns = []; terminator = Ret (I64, Some (IConst64 0L)) }, []);
            } );
        ];
    }

let%test "prog1" =
  from_string Llparser.prog
    "define i32 @add (i32 %a, i32 %b) {\n  %c = add i32 %a, %b\n ret i32 %c\n}"
  = {
      tdecls = [];
      extgdecls = [];
      gdecls = [];
      extfuns = [];
      fdecls =
        [
          ( Symbol.symbol "add",
            {
              fty = ([ I32; I32 ], I32);
              param = [ Symbol.symbol "a"; Symbol.symbol "b" ];
              cfg =
                ( {
                    insns =
                      [
                        ( Some (Symbol.symbol "c"),
                          Binop
                            ( Add,
                              I32,
                              Id (Symbol.symbol "a"),
                              Id (Symbol.symbol "b") ) );
                      ];
                    terminator = Ret (I32, Some (Id (Symbol.symbol "c")));
                  },
                  [] );
            } );
        ];
    }
