let jikyu = 950
let kihonkyu = 100

let kyuyo x = kihonkyu + x * jikyu  ;;

(* test *)
let test1 = kyuyo 25 = 23850 ;;
let test2 = kyuyo 28 = 26700 ;;
let test3 = kyuyo 31 = 29550 ;;

print_endline(string_of_bool(test1)) ;;
print_endline(string_of_bool(test2)) ;;
print_endline(string_of_bool(test3)) ;;
