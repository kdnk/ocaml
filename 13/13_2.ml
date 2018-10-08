(* 13.1 *)
let rec map_sqrt lst = match lst with
[] -> []
| first :: rest -> sqrt first :: map_sqrt rest
;;

let rec map f lst = match lst with
[] -> []
| first :: rest -> f first :: map f rest
;;
