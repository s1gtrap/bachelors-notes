module S = Symbol

type lva = (int * int) S.table

let lva_of_insn (l : lva) (idx : int) = function
  | Some d, Ll.Binop _ ->
      let l : lva = S.enter (l, d, (idx + 1, -1)) in
      l
  | _ -> failwith ""

let%test "lva_of_insn a = 1 + 2" =
  let insn =
    (Some (S.symbol "a"), Ll.Binop (Add, I32, IConst32 1l, IConst32 2l))
  in
  S.equal (lva_of_insn S.empty 0 insn, S.table_of_list [ ("a", (1, -1)) ])

let lva_of_block (_ : lva) (_ : Ll.block) : lva = S.empty

let%test "lva_of_block { [], Ret }" =
  let blk : Ll.block = { insns = []; terminator = Ret (Void, None) } in
  S.equal (lva_of_block S.empty blk, S.table_of_list [])

let%test "lva_of_block { [a = 1 + 2], Ret a }" =
  let blk : Ll.block =
    {
      insns =
        [ (Some (S.symbol "a"), Binop (Add, I32, IConst32 1l, IConst32 2l)) ];
      terminator = Ret (I32, Some (Id (S.symbol "a")));
    }
  in
  S.equal (lva_of_block S.empty blk, S.table_of_list [ ("a", (1, 2)) ])

let lva_of_cfg (_ : Ll.cfg) : lva = S.empty

let%test "lva_of_cfg { [], Ret }" =
  let blk : Ll.block = { insns = []; terminator = Ret (Void, None) } in
  let cfg : Ll.cfg = (blk, []) in
  S.equal (lva_of_cfg cfg, S.table_of_list [])

let%test "lva_of_cfg { [a = 1 + 2], Ret a }" =
  let blk : Ll.block =
    {
      insns =
        [ (Some (S.symbol "a"), Binop (Add, I32, IConst32 1l, IConst32 2l)) ];
      terminator = Ret (I32, Some (Id (S.symbol "a")));
    }
  in
  let cfg : Ll.cfg = (blk, []) in
  S.equal (lva_of_cfg cfg, S.table_of_list [ ("a", (1, 2)) ])

let%test "rev" = List.equal Int.equal (List.rev [ 3; 2; 1 ]) [ 1; 2; 3 ]
