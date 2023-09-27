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

let string_of_table (f : 'a -> string) (t : 'a table) =
  let entry k v s = Printf.sprintf "%s\n%s: %s" s (name k) (f v) in
  ST.fold entry t ""

let print_pair (a, b) = Printf.sprintf "(%d, %d)" a b
let equal (a, b) = ST.equal (fun a b -> a = b) a b

let table_of_list (entries : (string * (int * int)) list) : (int * int) table =
  let enter lva (k, v) = enter (lva, k, v) in
  let symbol (s, (k, v)) = (symbol s, (k, v)) in
  let entries = List.map symbol entries in
  List.fold_left enter empty entries

let%test "equal_empty" = equal (empty, empty)

let%test "equal_single" =
  equal (enter (empty, symbol "a", (2, 3)), enter (empty, symbol "a", (2, 3)))

let%test "not_equal_single" =
  not
    (equal
       (enter (empty, symbol "b", (3, 4)), enter (empty, symbol "c", (4, 5))))

let%test "table_of_list_empty" = equal (table_of_list [], empty)

let%test "table_of_list_single" =
  equal (table_of_list [ ("d", (5, 6)) ], enter (empty, symbol "d", (5, 6)))

let%test "table_of_list_single2" =
  equal (table_of_list [ ("d", (5, 6)) ], table_of_list [ ("d", (5, 6)) ])

(*[ (enter (empty, symbol "a", (1, 2)), table_of_list [ ("a", (1, 2)) ]) ]*)
