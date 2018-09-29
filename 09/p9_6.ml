let rec concat arr = match arr with
    [] -> ""
  | first :: rest -> first ^ concat rest

let test1 = concat ("春" :: "夏" :: "秋" :: "冬" :: []) = "春夏秋冬" ;;

print_endline(string_of_bool(test1)) ;;
