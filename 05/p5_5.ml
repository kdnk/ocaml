#use "p5_4.ml" ;;

let kai_no_kosuu a b c  =
  if hanbetsushiki a b c > 0.0 then 2
  else if hanbetsushiki a b c = 0.0 then 1
  else 0
;;

(* test *)
let test1 = kai_no_kosuu 1.0 2.0 3.0 = 0
let test2 = kai_no_kosuu 2.0 3.0 4.0 = 0
let test3 = kai_no_kosuu 3.0 10.0 1.0 = 2
;;

print_endline(string_of_bool(test1)) ;;
print_endline(string_of_bool(test2)) ;;
print_endline(string_of_bool(test3)) ;;
