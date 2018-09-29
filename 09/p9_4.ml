let rec length arr = match arr with
    [] -> 0
  | first :: rest -> 1 + length rest

let test1 = length(1 :: []) = 1
let test2 = length(1 :: 2 :: 3 :: []) = 3
let test3 = length([]) = 0 ;;

print_endline(string_of_bool(test1)) ;;
print_endline(string_of_bool(test2)) ;;
print_endline(string_of_bool(test3)) ;;
