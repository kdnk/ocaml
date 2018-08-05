let jikan x =
  if 0 <= x && x < 12 then "a.m."
  else if x = 12 then "noon"
  else if 12 <= x && x < 24 then "p.m."
  else "422"
;;

(* test *)
let test1 = jikan (12) = "noon"
let test2 = jikan 2 = "a.m."
let test3 = jikan 22 = "p.m."
;;

print_endline(string_of_bool(test1)) ;;
print_endline(string_of_bool(test2)) ;;
print_endline(string_of_bool(test3)) ;;
