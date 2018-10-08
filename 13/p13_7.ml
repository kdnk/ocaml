#use "../13/p13_6.ml"

let koshin p v =
let f q = koshin1 p q in
  List.map f v
