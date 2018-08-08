let taisho_x pair = match pair with
    (x, y) -> (-x, y)
;;

let test1 = taisho_x (1, 2) = (-1, 2)
let test2 = taisho_x (-4, 8) = (4, 8)
;;

print_endline(string_of_bool(test1)) ;;
print_endline(string_of_bool(test2)) ;;
