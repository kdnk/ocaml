type tree_t =
    Empty
  | Leaf of int
  | Node of tree_t * int * tree_t ;;

let rec tree_depth tree = match tree with
    Empty -> 0
  | Leaf (n) -> 0
  | Node (t1, n, t2) -> 1 + max (tree_depth t1) (tree_depth t2)
;;

let tree1 = Empty
let tree2 = Leaf (3)
let tree3 = Node (tree1, 4, tree2)
let tree4 = Node (tree2, 5, tree3) ;;

(* テスト *)
(* テスト *)
let test1 = tree_depth tree1 = 0
let test2 = tree_depth tree2 = 0
let test3 = tree_depth tree3 = 1
let test4 = tree_depth tree4 = 2 ;;

print_endline(string_of_bool(test1)) ;;
print_endline(string_of_bool(test2)) ;;
print_endline(string_of_bool(test3)) ;;
print_endline(string_of_bool(test4)) ;;
