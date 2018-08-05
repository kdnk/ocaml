let jikyu = 950;;

let kihonkyu = 100 ;;
print_int((25 * jikyu) + (28 * jikyu) + (31 * jikyu)) ;;

let f x = 3 * x ;;
print_int(f 4) ;;
print_endline("") ;;

let g x y = x * x + y * y - 4;;
print_int(g 3 2);;
print_endline("") ;;

let kyuyo x = kihonkyu + x * jikyu ;;
print_int(kyuyo 25 + kyuyo 28 + kyuyo 31) ;;
print_endline("") ;;
