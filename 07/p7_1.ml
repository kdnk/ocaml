let avg a b c d e = (a +. b +. c +. d +. e, (a +. b +. c +. d +. e) /. 5.0) ;;

let test1 = avg 1.0 2.0 3.0 4.0 5.0 = (15.0, 3.0) ;;

print_endline(string_of_bool(test1)) ;;
