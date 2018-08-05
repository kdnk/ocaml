let abs_value x = if x > 0.0 then x else -. x ;;

(* test *)
let test1 = abs_value (-2.8) = 2.8
let test2 = abs_value 2.8 = 2.8
let test3 = abs_value 0.0 = 0.0
;;

print_endline(string_of_bool(test1)) ;;
print_endline(string_of_bool(test2)) ;;
print_endline(string_of_bool(test3)) ;;
