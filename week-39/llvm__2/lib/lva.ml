module S = Symbol

type lva = (int * int) S.table

let lva_of_cfg (_ : Ll.cfg) : lva = S.empty

let%test "lva_of_cfg" =
  let blk : Ll.block = { insns = []; terminator = Ret (Void, None) } in
  let cfg : Ll.cfg = (blk, []) in
  S.equal (lva_of_cfg cfg, S.table_of_list [])

let%test "rev" = List.equal Int.equal (List.rev [ 3; 2; 1 ]) [ 1; 2; 3 ]
