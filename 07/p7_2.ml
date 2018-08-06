let seiseki pair = match pair with
    (name, grade) -> name ^ "さんの評価は" ^ grade ^ "です。"

let test1 = seiseki ("nakamura", "A") = "nakamuraさんの評価はAです。"
let test2 = seiseki ("nakamuri", "B") = "nakamuriさんの評価はBです。" ;;

print_endline(string_of_bool(test1)) ;;
print_endline(string_of_bool(test2)) ;;
