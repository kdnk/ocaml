let hanbetsushiki a b c = b ** 2.0 -. 4.0 *. a *. c ;;

let test1 = hanbetsushiki 1.0 2.0 3.0 = -8.0
let test2 = hanbetsushiki 2.0 3.0 4.0 = -23.0
let test3 = hanbetsushiki 3.0 10.0 1.0 = 88.0
;;

(* print_endline(string_of_bool(test1)) ;;
   print_endline(string_of_bool(test2)) ;;
   print_endline(string_of_bool(test3)) ;; *)
