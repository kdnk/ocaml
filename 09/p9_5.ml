let rec even arr = match arr with
    [] -> []
  | first :: rest ->
    if first mod 2 = 0
    then
      first :: even rest
    else
      even rest

let test1 = even ([2; 1; 6; 4; 7]) = [2; 6; 4]
let test2 = even ([2; 1; 6; 7]) = [2; 6] ;;

print_endline(string_of_bool(test1)) ;;
print_endline(string_of_bool(test2)) ;;
