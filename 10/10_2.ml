
let rec minimum lst = match lst with
  [] -> max_int
  | first :: rest ->
    if first < minimum rest
    then
      first
    else
      minimum rest
;;

let rec minimum_in lst = match lst with
  [] -> max_int
  | first :: rest ->
    let min_rest = minimum_in rest in
      if first < min_rest
        then
          first
        else
          min_rest
;;

(* テスト *)
let test1 = minimum [3] = 3
let test2 = minimum [1; 2] = 1
let test3 = minimum [3; 2] = 2
let test4 = minimum [3; 2; 6; 4; 1; 8] = 1
;;

print_endline(string_of_bool(test1)) ;;
print_endline(string_of_bool(test2)) ;;
print_endline(string_of_bool(test3)) ;;
print_endline(string_of_bool(test4)) ;;

let test5 = minimum [3] = 3
let test6 = minimum [1; 2] = 1
let test7 = minimum [3; 2] = 2
let test8 = minimum [3; 2; 6; 4; 1; 8] = 1
;;

print_endline(string_of_bool(test5)) ;;
print_endline(string_of_bool(test6)) ;;
print_endline(string_of_bool(test7)) ;;
print_endline(string_of_bool(test8)) ;;
