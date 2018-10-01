#use "../08/p8_3.ml"

let rec count_ketsueki lst ketsueki = match lst with
 [] -> 0
 | {  name = n; shincho = s; taiju = t; tsuki = tsu; hi = h; ketsueki = k  } :: rest ->
  if ketsueki = k
    then 1 + count_ketsueki rest ketsueki
    else count_ketsueki rest ketsueki

 ;;

let lst = [person1; person2; person3]
;;
(* テスト *)
let test1 = count_ketsueki [] "A" = 0
let test2 = count_ketsueki lst "A" = 1
let test3 = count_ketsueki lst "O" = 1
let test4 = count_ketsueki lst "B" = 1
let test5 = count_ketsueki lst "AB" = 0
;;


print_endline(string_of_bool(test1)) ;;
print_endline(string_of_bool(test2)) ;;
print_endline(string_of_bool(test3)) ;;
print_endline(string_of_bool(test4)) ;;
print_endline(string_of_bool(test5)) ;;
