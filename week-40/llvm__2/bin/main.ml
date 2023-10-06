open Llvm__2

let () =
  let { fdecls; _ } : Ll.prog = Parse.from_file Sys.argv.(1) in
  List.iter
    (fun (gid, fdecl) ->
      Printf.printf "%s" (Ll.string_of_named_fdecl (gid, fdecl));
      let lva = Lva.lva_of_fdecl fdecl in
      Printf.printf "%s\n\n" (Symbol.string_of_table Symbol.print_pair lva);
      let graph = Lva.graph_of_lva lva in
      Printf.printf "%s\n" (Graph.to_string graph))
    fdecls
