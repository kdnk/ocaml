let hanbetsushiki a b c = b ** 2.0 -. 4.0 *. a *. c ;;
let hanbetsu a b c =
  if hanbetsushiki a b c > 0.0 then "positive"
  else if hanbetsushiki a b c = 0.0 then "0"
  else "negative"
;;

(* test *)
let test1 = hanbetsu 1.0 2.0 3.0 = "negative"
let test2 = hanbetsu 2.0 3.0 4.0 = "negative"
let test3 = hanbetsu 3.0 10.0 1.0 = "positive"
;;

print_endline(string_of_bool(test1)) ;;
print_endline(string_of_bool(test2)) ;;
print_endline(string_of_bool(test3)) ;;
