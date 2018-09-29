#use "../05/p5_3.ml" ;;
#use "../08/p8_3.ml" ;;

(* person_t list 型のデータの例 *)
let lst1 = []
let lst2 = [person1]
let lst3 = [person2]
let lst4 = [person1; person2; person3]
let lst5 = [person2; person1; person1]

let rec otomeza lst = match lst with
    [] -> []
  |  {name = n; shincho = s; taiju = t; tsuki = ts; hi = h; ketsueki = k} :: rest ->
    if seiza ts h = "乙女座" then n :: otomeza rest else otomeza rest


(* テスト *)
let test1 = otomeza lst1 = []
let test2 = otomeza lst2 = ["浅井"]
let test3 = otomeza lst3 = []
let test4 = otomeza lst4 = ["浅井"]
let test5 = otomeza lst5 = ["浅井"; "浅井"]
;;

print_endline(string_of_bool(test1)) ;;
print_endline(string_of_bool(test2)) ;;
print_endline(string_of_bool(test3)) ;;
print_endline(string_of_bool(test4)) ;;
print_endline(string_of_bool(test5)) ;;
