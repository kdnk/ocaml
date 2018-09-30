(* m ** n *)
let rec power m n =
  if n = 0 then 1
    else m * power m (n - 1)
;;

let test1 = power 3 0 = 1
let test2 = power 3 1 = 3
let test3 = power 3 2 = 9
let test4 = power 3 3 = 27
;;

print_endline(string_of_bool(test1)) ;;
print_endline(string_of_bool(test2)) ;;
print_endline(string_of_bool(test3)) ;;
print_endline(string_of_bool(test4)) ;;
