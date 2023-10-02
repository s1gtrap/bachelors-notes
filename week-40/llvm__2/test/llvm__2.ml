module TransitionSets = Set.Make (String)

module Int = struct
  type t = int

  (* use Pervasives compare *)
  let compare = compare
end

module Ints = Set.Make (Int)
