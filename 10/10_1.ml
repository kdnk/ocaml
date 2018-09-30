
let rec add_to_each n lst = match lst with
    [] -> []
  | first :: rest -> (n :: first) :: add_to_each n rest
;;

let test1 = add_to_each 1 [] = []
let test2 = add_to_each 1 [[2]] = [[1; 2]]
let test3 = add_to_each 1 [[2]; [2; 3]] = [[1; 2]; [1; 2; 3]]
let test4 = add_to_each 1 [[2]; [2; 3]; [2; 3; 4]] = [[1; 2]; [1; 2; 3]; [1; 2; 3; 4]]
;;

print_endline(string_of_bool(test1)) ;;
print_endline(string_of_bool(test2)) ;;
print_endline(string_of_bool(test3)) ;;
print_endline(string_of_bool(test4)) ;;


let rec prefix lst = match lst with
 [] -> []
 | first :: rest ->  [first] :: add_to_each first (prefix rest)
 ;;

let test5 = prefix [] = []
let test6 = prefix [1] = [[1]]
let test7 = prefix [1; 2] = [[1]; [1; 2]]
let test8 = prefix [1; 2; 3; 4] = [[1]; [1; 2]; [1; 2; 3]; [1; 2; 3; 4]]
let test9 = prefix [2; 3; 4] = [[2]; [2; 3]; [2; 3; 4]]
;;

print_endline(string_of_bool(test5)) ;;
print_endline(string_of_bool(test6)) ;;
print_endline(string_of_bool(test7)) ;;
print_endline(string_of_bool(test8)) ;;
print_endline(string_of_bool(test9)) ;;
