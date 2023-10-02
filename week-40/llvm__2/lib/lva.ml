module S = Symbol

type lva = (int * int) S.table

let lva_of_insn (l : lva) (idx : int) insn =
  let def l = function Some d -> S.enter (l, d, (idx + 1, -1)) | None -> l in
  let use l = function
    | Ll.Id s -> S.enter (l, s, (fst (Option.get (S.look (l, s))), idx + 1))
    | _ -> l
  in
  let l =
    match insn with
    | d, Ll.Binop (_, _, a, b) -> ((def l d |> use) a |> use) b
    | _ -> failwith ""
  in
  (l, idx + 1)

let%test "lva_of_insn a = 1 + 2" =
  let insn =
    (Some (S.symbol "a"), Ll.Binop (Add, I32, IConst32 1l, IConst32 2l))
  in
  let l, o = lva_of_insn S.empty 0 insn in
  S.equal (l, S.table_of_list [ ("a", (1, -1)) ]) && o == 1

let%test "lva_of_insn a = 1 + 2" =
  let insn =
    (Some (S.symbol "a"), Ll.Binop (Add, I32, IConst32 1l, IConst32 2l))
  in
  let l, o = lva_of_insn S.empty 0 insn in
  S.equal (l, S.table_of_list [ ("a", (1, -1)) ]) && o == 1

let lva_of_term (l : lva) (idx : int) = function
  | Ll.Ret (_, None) -> (l, idx + 1)
  | Ll.Ret (_, Some (Id s)) ->
      (S.enter (l, s, (fst (Option.get (S.look (l, s))), idx + 1)), idx + 1)
  | _ -> failwith ""

let%test "lva_of_term Ret a" =
  let term = Ll.Ret (I32, Some (Id (S.symbol "a"))) in
  let l, o = lva_of_term (S.table_of_list [ ("a", (1, -1)) ]) 1 term in
  S.equal (l, S.table_of_list [ ("a", (1, 2)) ]) && o == 2

let lva_of_block (l : lva) idx ({ insns; terminator } : Ll.block) : lva * int =
  let fold (l, idx) insn = lva_of_insn l idx insn in
  let l, i = List.fold_left fold (l, idx) insns in
  lva_of_term l i terminator

let%test "lva_of_block { [], Ret }" =
  let blk : Ll.block = { insns = []; terminator = Ret (Void, None) } in
  let l, o = lva_of_block S.empty 0 blk in
  S.equal (l, S.table_of_list []) && o == 1

let%test "lva_of_block { [a = 1 + 2], Ret a }" =
  let blk : Ll.block =
    {
      insns =
        [ (Some (S.symbol "a"), Binop (Add, I32, IConst32 1l, IConst32 2l)) ];
      terminator = Ret (I32, Some (Id (S.symbol "a")));
    }
  in
  let l, o = lva_of_block S.empty 0 blk in
  S.equal (l, S.table_of_list [ ("a", (1, 2)) ]) && o == 2

let lva_of_cfg ((head, tail) : Ll.cfg) : lva =
  let l, o = lva_of_block S.empty 0 head in
  let fold (l, o) (_, blk) = lva_of_block l o blk in
  let l, _ = List.fold_left fold (l, o) tail in
  l

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

let%test "lva_of_cfg { [a = 1 + 2; b = a + 3], Ret b }" =
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
  let cfg : Ll.cfg = (blk, []) in
  S.equal (lva_of_cfg cfg, S.table_of_list [ ("a", (1, 2)); ("b", (2, 3)) ])
