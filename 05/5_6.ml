let kaiteki t = 15 <= t && t <= 25 ;;

let kion t = if kaiteki t then "comfortable" else "normal";
;;

(* test *)
let test1 = kion 12 = "normal"
let test2 = kion 20 = "comfortable"
let test3 = kion 30 = "normal"
let test1 = kaiteki 12 = false
let test2 = kaiteki 20 = true
let test3 = kaiteki 30 = false
;;

print_endline(string_of_bool(test1)) ;;
print_endline(string_of_bool(test2)) ;;
print_endline(string_of_bool(test3)) ;;
