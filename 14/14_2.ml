let rec sum lst = match lst with
  [] -> 0
  | first :: rest -> first + sum rest ;;

let rec length lst = match lst with
  [] -> 0
  | first :: rest -> 1 + length rest ;;

let rec append lst1 lst2 = match lst1 with
  [] -> lst2
  | first :: rest -> first :: append rest lst2 ;;


let rec fold_right f lst init  = match lst with
  [] -> init
  | first :: rest -> f first (fold_right f rest init) ;;

(* ---- *)

let add_int first rest_result = first + rest_result ;;
let sum2 lst = fold_right add_int lst 0 ;;

let add_one first rest_result = 1 + rest_result ;;
let length2 lst = fold_right add_one lst 0 ;;

let cons first rest_result = first :: rest_result ;;
let append2 lst1 lst2 = fold_right cons lst1 lst2 ;;
