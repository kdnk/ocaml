type tree_t =
  Empty
  | Leaf of int
  | Noede of tree_t * int * tree_t
