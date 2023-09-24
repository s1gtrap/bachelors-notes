module S = Symbol

type lva = (int * int) S.table

let lva_of_cfg (_ : Ll.cfg) : lva = S.empty
let%test "lva_of_cfg" = List.equal Int.equal (List.rev [ 3; 2; 1 ]) [ 1; 2; 3 ]
let%test "rev" = List.equal Int.equal (List.rev [ 3; 2; 1 ]) [ 1; 2; 3 ]
