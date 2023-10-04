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
              match S.look (lva, op) with Some _ -> lva | None -> lva)
          | _ -> failwith "unreachable"
        in
        List.fold_left fold (def lva d) ops
    | _, i -> failwith (Ll.string_of_insn i)
  in
  (l, idx + 1)

let%test "lva_of_insn a = 1 + 2" =
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
  | t -> failwith (Ll.string_of_terminator t)

let%test "lva_of_term Ret a" =
  let term = Ll.Ret (I32, Some (Id (S.symbol "a"))) in
  let l, o = lva_of_term (S.table_of_list [ ("a", (1, -1)) ]) 1 term in
  S.equal (l, S.table_of_list [ ("a", (1, 2)) ]) && o == 2

let lva_of_block lva idx ({ insns; terminator } : Ll.block) =
  let fold (lva, idx) insn = lva_of_insn lva idx insn in
  let lva, idx = List.fold_left fold (lva, idx) insns in
  lva_of_term lva idx terminator

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

let lva_of_cfg (head, tail) =
  let lva, off = lva_of_block S.empty 0 head in
  let fold (lva, off) (_, blk) = lva_of_block lva off blk in
  fst (List.fold_left fold (lva, off) tail)

let%test "lva_of_cfg { [], Ret }" =
  let blk : Ll.block = { insns = []; terminator = Ret (Void, None) } in
  S.equal (lva_of_cfg (blk, []), S.table_of_list [])

let%test "lva_of_cfg { [a = 1 + 2], Ret a }" =
  let blk : Ll.block =
    {
      insns =
        [ (Some (S.symbol "a"), Binop (Add, I32, IConst32 1l, IConst32 2l)) ];
      terminator = Ret (I32, Some (Id (S.symbol "a")));
    }
  in
  S.equal (lva_of_cfg (blk, []), S.table_of_list [ ("a", (1, 2)) ])

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
  S.equal
    (lva_of_cfg (blk, []), S.table_of_list [ ("a", (1, 2)); ("b", (2, 3)) ])

let%test "lva_of_cfg3" =
  (*
    a = 0 + 1
    b = a + 2
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
      S.table_of_list [ ("a", (1, 4)); ("b", (2, 4)); ("c", (4, 5)) ] )
