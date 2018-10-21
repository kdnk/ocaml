type tree_t =
    Empty
  | Leaf of int
  | Node of tree_t * int * tree_t ;;

let rec search tree data = match tree with
    Empty -> false
  | Leaf (n) -> if n = data then true else false
  | Node (t1, n, t2) ->
    if n > data then
      search t1 data
    else if n < data then
      search t2 data
    else
      true
;;

(* ２分探索木の例 *)
let tree1 = Empty
let tree2 = Leaf (3)
let tree3 = Node (Leaf (1), 2, Leaf (3))
let tree4 = Node (Empty, 7, Leaf (9))
let tree5 = Node (tree3, 6, tree4)
;;

(* テスト *)
let test1 = search tree1 3 = false
let test2 = search tree2 3 = true
let test3 = search tree2 4 = false
let test4 = search tree5 6 = true
let test5 = search tree5 2 = true
let test6 = search tree5 1 = true
let test7 = search tree5 4 = false
let test8 = search tree5 7 = true
let test9 = search tree5 8 = false
;;


print_endline(string_of_bool(test1)) ;;
print_endline(string_of_bool(test2)) ;;
print_endline(string_of_bool(test3)) ;;
print_endline(string_of_bool(test4)) ;;
print_endline(string_of_bool(test5)) ;;
print_endline(string_of_bool(test6)) ;;
print_endline(string_of_bool(test7)) ;;
print_endline(string_of_bool(test8)) ;;
print_endline(string_of_bool(test9)) ;;

(* ----------------------------------- *)

let rec insert_tree tree data = match tree with
    Empty -> Leaf (data)
  | Leaf (n) -> if data = n then Leaf (n) else if n < data then Node (Empty, n, Leaf (data)) else Node (Leaf (data), n, Empty)
  | Node (t1, n, t2) ->
    if data = n then Node (t1, n, t2)
    else if data < n then Node (insert_tree t1 data, n, t2)
    else Node (t1, n, insert_tree t2 data)
;;

(* テスト *)
let test1 = insert_tree Empty 3 = Leaf (3)
let test2 = insert_tree (Leaf (3)) 2 = Node (Leaf (2), 3, Empty)
let test3 = insert_tree (Leaf (3)) 3 = Leaf (3)
let test4 = insert_tree (Leaf (3)) 4 = Node (Empty, 3, Leaf (4))
let test5 = insert_tree tree5 4 =
            Node (Node (Leaf (1), 2, Node (Empty, 3, Leaf (4))),
                  6,
                  Node (Empty, 7, Leaf (9))) ;;

print_endline(string_of_bool(test1)) ;;
print_endline(string_of_bool(test2)) ;;
print_endline(string_of_bool(test3)) ;;
print_endline(string_of_bool(test4)) ;;
print_endline(string_of_bool(test5)) ;;
