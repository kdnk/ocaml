
let rec insert lst n  = match lst with
  [] -> [n]
  | first :: rest ->
  if n < first
  then
    n ::  lst
  else
    first :: insert rest n
;;

let test1 = insert [] 3 = [3]
let test2 = insert [1] 3 = [1; 3]
let test3 = insert [3] 1 = [1; 3]
let test4 = insert [1; 3; 4; 7; 8] 5 = [1; 3; 4; 5; 7; 8]
;;

print_endline(string_of_bool(test1)) ;;
print_endline(string_of_bool(test2)) ;;
print_endline(string_of_bool(test3)) ;;
print_endline(string_of_bool(test4)) ;;
