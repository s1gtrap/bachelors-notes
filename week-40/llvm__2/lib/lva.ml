module S = Symbol

type lva = (int * int) S.table

let lva_of_insn lva idx insn =
  let def l = function Some d -> S.enter (l, d, (idx + 1, -1)) | None -> l in
  let use l = function
    | Ll.Id s -> S.enter (l, s, (fst (Option.get (S.look (l, s))), idx + 1))
    | _ -> l
  in
  let l =
    match insn with
    | d, Ll.Binop (_, _, a, b) -> ((def lva d |> use) a |> use) b
    | d, Ll.PhiNode (_, ops) ->
        let fold lva = function
          | Ll.Id op, _ -> (
              match S.look (lva, op) with
              | Some (lbegin, _) ->
                  (* variable was live, so it has to remain so *)
                  S.enter (lva, op, (lbegin, idx + 1))
              | None -> lva)
          | _ -> failwith "unreachable"
        in
        List.fold_left fold (def lva d) ops
    | _, i -> failwith (Ll.string_of_insn i)
  in
  (l, idx + 1)

let%test "lva_of_insn0" =
  (*
    a = 1 + 2
     *)
  let insn =
    (Some (S.symbol "a"), Ll.Binop (Add, I32, IConst32 1l, IConst32 2l))
  in
  let l, o = lva_of_insn S.empty 0 insn in
  S.equal (l, S.table_of_list [ ("a", (1, -1)) ]) && o == 1

let lva_of_term lva idx = function
  | Ll.Ret (_, None) -> (lva, idx + 1)
  | Ll.Ret (_, Some (Id s)) ->
      (S.enter (lva, s, (fst (Option.get (S.look (lva, s))), idx + 1)), idx + 1)
  | Ll.Br _ -> (lva, idx + 1)
  | Ll.Cbr (Id cnd, _, _) ->
      ( S.enter (lva, cnd, (fst (Option.get (S.look (lva, cnd))), idx + 1)),
        idx + 1 )
  | Ll.Cbr _ -> failwith "unreachable"
  | t -> failwith (Ll.string_of_terminator t)

let%test "lva_of_term0" =
  (*
    Ret a
    *)
  let term = Ll.Ret (I32, Some (Id (S.symbol "a"))) in
  let l, o = lva_of_term (S.table_of_list [ ("a", (1, -1)) ]) 1 term in
  S.equal (l, S.table_of_list [ ("a", (1, 2)) ]) && o == 2

let%test "lva_of_term1" =
  (*
    cbr a, b, c
    *)
  let term = Ll.Cbr (Ll.Id (S.symbol "a"), S.symbol "b", S.symbol "c") in
  let lva, off = lva_of_term (S.table_of_list [ ("a", (1, -1)) ]) 1 term in
  S.equal (lva, S.table_of_list [ ("a", (1, 2)) ]) && off == 2

let lva_of_block lva idx ({ insns; terminator } : Ll.block) =
  let fold (lva, idx) insn = lva_of_insn lva idx insn in
  let lva, idx = List.fold_left fold (lva, idx) insns in
  lva_of_term lva idx terminator

let%test "lva_of_block0" =
  (*
    ret
    *)
  let blk : Ll.block = { insns = []; terminator = Ret (Void, None) } in
  let l, o = lva_of_block S.empty 0 blk in
  S.equal (l, S.table_of_list []) && o == 1

let%test "lva_of_block1" =
  (*
    a = 1 + 2
    ret a
    *)
  let blk : Ll.block =
    {
      insns =
        [ (Some (S.symbol "a"), Binop (Add, I32, IConst32 1l, IConst32 2l)) ];
      terminator = Ret (I32, Some (Id (S.symbol "a")));
    }
  in
  let l, o = lva_of_block S.empty 0 blk in
  S.equal (l, S.table_of_list [ ("a", (1, 2)) ]) && o == 2

let lva_of_cfg (head, tail) =
  let lva, off = lva_of_block S.empty 0 head in
  let fold (lva, off) (_, blk) = lva_of_block lva (off + 1) blk in
  fst (List.fold_left fold (lva, off) tail)

let%test "lva_of_cfg0" =
  (*
    ret
    *)
  let blk : Ll.block = { insns = []; terminator = Ret (Void, None) } in
  S.equal (lva_of_cfg (blk, []), S.table_of_list [])

let%test "lva_of_cfg1" =
  (*
    a = 1 + 2
    ret a
    *)
  let blk : Ll.block =
    {
      insns =
        [ (Some (S.symbol "a"), Binop (Add, I32, IConst32 1l, IConst32 2l)) ];
      terminator = Ret (I32, Some (Id (S.symbol "a")));
    }
  in
  S.equal (lva_of_cfg (blk, []), S.table_of_list [ ("a", (1, 2)) ])

let%test "lva_of_cfg2" =
  (*
    a = 1 + 2
    b = a + 3
    ret b
    *)
  let blk : Ll.block =
    {
      insns =
        [
          (Some (S.symbol "a"), Binop (Add, I32, IConst32 1l, IConst32 2l));
          (Some (S.symbol "b"), Binop (Add, I32, Id (S.symbol "a"), IConst32 3l));
        ];
      terminator = Ret (I32, Some (Id (S.symbol "b")));
    }
  in
  S.equal
    (lva_of_cfg (blk, []), S.table_of_list [ ("a", (1, 2)); ("b", (2, 3)) ])

let%test "lva_of_cfg3" =
  (*
    a = 0 + 1
    b = a + 2
    br l
l:
    c = a + b
    ret c
    *)
  let entry : Ll.block =
    {
      insns =
        [
          (Some (S.symbol "a"), Binop (Add, I32, IConst32 0l, IConst32 1l));
          (Some (S.symbol "b"), Binop (Add, I32, Id (S.symbol "a"), IConst32 2l));
        ];
      terminator = Br (S.symbol "l");
    }
  in
  let exit : Ll.block =
    {
      insns =
        [
          ( Some (S.symbol "c"),
            Binop (Add, I32, Id (S.symbol "a"), Id (S.symbol "b")) );
        ];
      terminator = Ret (I32, Some (Id (S.symbol "c")));
    }
  in
  S.equal
    ( lva_of_cfg (entry, [ (S.symbol "l", exit) ]),
      S.table_of_list [ ("a", (1, 5)); ("b", (2, 5)); ("c", (5, 6)) ] )

let%test "lva_of_cfg4" =
  (*
    br e
e:
    a0 = 10 + 0
    br l
l:
    a1 = phi a0, a2
    a2 = a1 - 1
    cbr a2, l, f
f:
    ret a2
    *)
  let entry0 : Ll.block = { insns = []; terminator = Br (S.symbol "e") } in
  let entry1 : Ll.block =
    {
      insns =
        [ (Some (S.symbol "a0"), Binop (Add, I32, IConst32 42l, IConst32 27l)) ];
      terminator = Br (S.symbol "l");
    }
  in
  let loop : Ll.block =
    {
      insns =
        [
          ( Some (S.symbol "a1"),
            PhiNode
              ( I32,
                [
                  (Id (S.symbol "a0"), S.symbol "e");
                  (Id (S.symbol "a2"), S.symbol "l");
                ] ) );
          ( Some (S.symbol "a2"),
            Binop (Sub, I32, Id (S.symbol "a1"), IConst32 1l) );
        ];
      terminator = Cbr (Id (S.symbol "a2"), S.symbol "l", S.symbol "f");
    }
  in
  let exit : Ll.block =
    { insns = []; terminator = Ret (I32, Some (Id (S.symbol "a2"))) }
  in
  (*Printf.printf "%s"
    (S.string_of_table S.print_pair
       (lva_of_cfg
          ( entry0,
            [
              (S.symbol "e", entry1); (S.symbol "l", loop); (S.symbol "f", exit);
            ] )));*)
  S.equal
    ( lva_of_cfg
        ( entry0,
          [ (S.symbol "e", entry1); (S.symbol "l", loop); (S.symbol "f", exit) ]
        ),
      S.table_of_list [ ("a0", (3, 6)); ("a1", (6, 7)); ("a2", (7, 10)) ] )
