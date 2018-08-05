let tsurukame_no_ashi t k = t * 2 + k * 4 ;;

(* test *)
let test1 = tsurukame_no_ashi 1 2 = 10 ;;
let test2 = tsurukame_no_ashi 2 2 = 12 ;;
let test3 = tsurukame_no_ashi 1 1 = 6 ;;
print_endline(string_of_bool(test1)) ;;
print_endline(string_of_bool(test2)) ;;
print_endline(string_of_bool(test3)) ;;
