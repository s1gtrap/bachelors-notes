module S = Set.Make (struct
  type t = Symbol.symbol

  let compare (_, n1) (_, n2) = compare n1 n2
end)

type graph = S.t Symbol.table

let empty = Symbol.empty

let%test "empty should return a new map with zero entries" =
  Symbol.ST.cardinal empty == 0

let bindings t =
  List.map (fun (k, s) -> (k, S.elements s)) (Symbol.ST.bindings t)

let add_edge (t, k, v) =
  Symbol.ST.update v
    (function Some s -> Some (S.add k s) | None -> Some (S.add k S.empty))
    (Symbol.ST.update k
       (function Some s -> Some (S.add v s) | None -> Some (S.add v S.empty))
       t)

let%test "add_edge should add a bidirectional edge for (k, v)" =
  List.equal ( = )
    (bindings (add_edge (empty, Symbol.symbol "a", Symbol.symbol "b")))
    [
      (Symbol.symbol "a", [ Symbol.symbol "b" ]);
      (Symbol.symbol "b", [ Symbol.symbol "a" ]);
    ]

module Z = Set.Make (struct
  type t = Symbol.symbol * Symbol.symbol

  let compare ((_, n1), (_, m1)) ((_, n2), (_, m2)) =
    compare n1 n2 * compare n1 m2 * compare m1 n2
end)

let to_string (g : S.t Symbol.table) =
  let edges =
    List.fold_left
      (fun (a : Z.t) ((k, e) : Symbol.symbol * _) ->
        List.fold_left (fun (a : Z.t) e -> Z.add (k, e) a) a (S.elements e))
      Z.empty (Symbol.ST.bindings g)
  in
  "graph {\n"
  ^ List.fold_left
      (fun a (k, _) -> a ^ "  \"" ^ Symbol.name k ^ "\"\n")
      "" (Symbol.ST.bindings g)
  ^ "\n"
  ^ Z.fold
      (fun ((k, v) : Symbol.symbol * Symbol.symbol) (a : string) ->
        a ^ "  \"" ^ Symbol.name k ^ "\" -- \"" ^ Symbol.name v ^ "\"\n")
      edges ""
  ^ "}"
