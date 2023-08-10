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

let%test "cfg0" =
  from_string Llparser.cfgeof "ret i64 0\n"
  = ({ insns = []; terminator = Ret (I64, Some (IConst64 0L)) }, [])

let%test "cfg1" =
  from_string Llparser.cfgeof "%c = add i32 %a, %b\n ret i32 %c"
  = ( {
        insns =
          [
            ( Some (Symbol.symbol "c"),
              Binop (Add, I32, Id (Symbol.symbol "a"), Id (Symbol.symbol "b"))
            );
          ];
        terminator = Ret (I32, Some (Id (Symbol.symbol "c")));
      },
      [] )

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

let%test "prog2" =
  from_string Llparser.prog
    "@errmsg = global [19 x i8] c\"invalid arguments\\0A\\00\"\n\
     declare i32 @puts(i8*)\n\
     define i32 @main(i32 %argc, i8** %argv) {\n\
    \    %cnd = icmp ne i32 %argc, 2\n\
    \    br i1 %cnd, label %exit, label %succ\n\
     exit:\n\
    \    call i32 @puts(i8* @errmsg)\n\
    \    ret i32 1\n\
     succ:\n\
    \    %arg1str = load i8*, i8** %arg1ptr\n\
    \    call i32 @puts(i8* %arg1str)\n\
    \    ret i32 0\n\
     }"
  = {
      tdecls = [];
      extgdecls = [];
      gdecls =
        [
          (* @errmsg = global [19 x i8] c"invalid arguments\\0A\\00" *)
          ( Symbol.symbol "errmsg",
            (Array (19, I8), GString "invalid arguments\x0A\x00") );
        ];
      extfuns = [];
      fdecls =
        [
          (* define i32 @main(i32 %argc, i8** %argv) { *)
          ( Symbol.symbol "main",
            {
              fty = ([ I32; Ptr (Ptr I8) ], I32);
              param = [ Symbol.symbol "argc"; Symbol.symbol "argv" ];
              cfg =
                ( {
                    insns =
                      [
                        (* %cnd = icmp ne i32 %argc, 2 *)
                        ( Some (Symbol.symbol "cnd"),
                          Icmp (Ne, I32, Id (Symbol.symbol "argc"), IConst64 2L)
                        );
                      ];
                    terminator =
                      (* br i1 %cnd0, label %exit, label %succ *)
                      Cbr
                        ( Id (Symbol.symbol "cnd"),
                          Symbol.symbol "exit",
                          Symbol.symbol "succ" );
                  },
                  [
                    (* exit: *)
                    ( Symbol.symbol "exit",
                      {
                        insns =
                          [
                            (* call i32 @puts(i8* @errmsg) *)
                            ( None,
                              Call
                                ( I32,
                                  Gid (Symbol.symbol "puts"),
                                  [ (Ptr I8, Gid (Symbol.symbol "errmsg")) ] )
                            );
                          ];
                        terminator = (* ret i32 1 *)
                                     Ret (I32, Some (IConst64 1L));
                      } );
                    (* succ: *)
                    ( Symbol.symbol "succ",
                      {
                        insns =
                          [
                            (* %arg1str = load i8*, i8** %arg1ptr *)
                            ( Some (Symbol.symbol "arg1str"),
                              Load (Ptr I8, Id (Symbol.symbol "arg1ptr")) );
                            (* call i32 @puts(i8* %arg1str) *)
                            ( None,
                              Call
                                ( I32,
                                  Gid (Symbol.symbol "puts"),
                                  [ (Ptr I8, Id (Symbol.symbol "arg1str")) ] )
                            );
                          ];
                        terminator = (* ret i32 0 *)
                                     Ret (I32, Some (IConst64 0L));
                      } );
                  ] );
            } );
        ];
    }
