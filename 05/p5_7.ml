let bmi height weight = height /. (weight) ** 2.0 ;;

let taikei bmi =
  if bmi < 18.5 then "thin"
  else if bmi < 25.0 then "normal"
  else if bmi < 30.0 then "obesity"
  else "high obesity"
;;


let test1 = taikei 18.4 = "thin"
let test2 = taikei 18.5 = "normal"
let test3 = taikei 24.9 = "normal"
let test4 = taikei 25.0 = "obesity"
let test5 = taikei 30.1 = "high obesity"
;;

print_endline(string_of_bool(test1)) ;;
print_endline(string_of_bool(test2)) ;;
print_endline(string_of_bool(test3)) ;;
print_endline(string_of_bool(test4)) ;;
print_endline(string_of_bool(test5)) ;;
