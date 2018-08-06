#use "p5_4.ml" ;;
let kyosuukai a b c =
  if hanbetsushiki a b c >= 0.0 then false
  else true
;;

(* test *)
let test1 = kyosuukai 1.0 2.0 3.0 = true
let test2 = kyosuukai 2.0 3.0 4.0 = true
let test3 = kyosuukai 3.0 10.0 1.0 = false
;;

print_endline(string_of_bool(test1)) ;;
print_endline(string_of_bool(test2)) ;;
print_endline(string_of_bool(test3)) ;;
