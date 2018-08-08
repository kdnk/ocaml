let chuten pair = match pair with
    ((c, d), (e, f)) -> ((c +. e) /. 2.0, (d +. f) /. 2.0 )
;;

let test1 = chuten ((1.0, 2.0), (3.0, 4.0)) = (2.0, 3.0)
let test2 = chuten ((-4.0, 8.0), (2.0, -7.0)) = (-1.0, 0.5)
;;

print_endline(string_of_bool(test1)) ;;
print_endline(string_of_bool(test2)) ;;
