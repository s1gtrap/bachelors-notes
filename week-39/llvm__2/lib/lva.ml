module Ints = Set.Make (struct
  type t = int

  (* use Pervasives compare *)
  let compare = compare
end)

let%test "rev" = List.equal Int.equal (List.rev [ 3; 2; 1 ]) [ 1; 2; 3 ]
