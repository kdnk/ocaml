(* 鶴の個体の数から足の数を求める *)
let tsuru_no_ashi x = x * 2 ;;

(* test *)
let test1 = tsuru_no_ashi 4 = 8
let test2 = tsuru_no_ashi 10 = 20
let test3 = tsuru_no_ashi 22 = 44 ;;
print_endline(string_of_bool(test1)) ;;
print_endline(string_of_bool(test2)) ;;
print_endline(string_of_bool(test3)) ;;



let kameno_no_ashi x = x * 4 ;;

(* test *)
let test4 = tsuru_no_ashi 4 = 16
let test5 = tsuru_no_ashi 10 = 40
let test6 = tsuru_no_ashi 22 = 88 ;;
print_endline(string_of_bool(test1)) ;;
print_endline(string_of_bool(test2)) ;;
print_endline(string_of_bool(test3)) ;;
