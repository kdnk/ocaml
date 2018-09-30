let rec equal_length lst1 lst2 = match (lst1, lst2) with
  ([], []) -> true
  | (first :: rest, []) -> false
  | ([], first :: rest) -> false
  | (first1 :: rest1, first2 :: rest2) ->
    equal_length rest1 rest2
;;

let test1 = equal_length [] [] = true
let test2 = equal_length [] [1; 2] = false
let test3 = equal_length [1; 2] [] = false
let test4 = equal_length [1; 3] [2; 4] = true
let test5 = equal_length ["a"; "b"; "c"; "d"] [1; 3] = false
let test6 = equal_length ["a"; "b"; "c"; "d"] [1; 3; 2; 4] = true
;;

print_endline(string_of_bool(test1)) ;;
print_endline(string_of_bool(test2)) ;;
print_endline(string_of_bool(test3)) ;;
print_endline(string_of_bool(test4)) ;;
print_endline(string_of_bool(test5)) ;;
print_endline(string_of_bool(test6)) ;;
