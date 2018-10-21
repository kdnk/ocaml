type 'a tree_t =
    Empty
  | Leaf of 'a
  | Node of 'a tree_t * 'a * 'a tree_t
;;
