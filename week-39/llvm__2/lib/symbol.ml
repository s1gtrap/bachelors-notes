(**************************************************************************)
(* AU Compilation. Assignment submissions must not modify this file       *)
(**************************************************************************)

type symbol = string * int

module H = Hashtbl

let initHtSize = 1024
let hashTable : (string, int) H.t = H.create initHtSize
let nextsym = ref 0

let symbol name =
  match H.find_opt hashTable name with
  | Some i -> (name, i)
  | None ->
      let i = !nextsym in
      nextsym := i + 1;
      H.add hashTable name i;
      (name, i)

let name (s, _) = s

module ST = Map.Make (struct
  type t = symbol

  let compare (_, n1) (_, n2) = compare n1 n2
end)

type 'a table = 'a ST.t

let empty = ST.empty
let enter (t, k, v) = ST.add k v t
let look (t, k) = ST.find_opt k t
let numItems = ST.cardinal

let table_of_list (entries : (string * (int * int)) list) : (int * int) table =
  let enter lva (k, v) = enter (lva, k, v) in
  let symbol (s, (k, v)) = (symbol s, (k, v)) in
  let entries = List.map symbol entries in
  List.fold_left enter empty entries

let%test "table_of_list" =
  let eq a b = a == b in
  let teq (a, b) = ST.equal eq a b in
  List.for_all teq
    [ (enter (empty, symbol "a", (1, 2)), table_of_list [ ("a", (1, 2)) ]) ]
