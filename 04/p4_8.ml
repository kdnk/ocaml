let tsurukame sum leg = (4 * sum - leg) / 2 ;;

let test1 = tsurukame 4 8 =  4 ;;
let test2 = tsurukame 4 10 = 3 ;;
let test3 = tsurukame 8 20 = 6 ;;

print_endline(string_of_bool(test1)) ;;
print_endline(string_of_bool(test2)) ;;
print_endline(string_of_bool(test3)) ;;
