let rec gcd m n =
  if n = 0 then
    m
  else
    gcd n (m mod n)
;;

let test1 = gcd 7 5 = 1
let test2 = gcd 30 18 = 6
let test3 = gcd 36 24 = 12
;;

print_endline(string_of_bool(test1)) ;;
print_endline(string_of_bool(test2)) ;;
print_endline(string_of_bool(test3)) ;;
