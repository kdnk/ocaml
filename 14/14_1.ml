let rec filter_positive lst = match lst with
  [] -> []
  | first :: rest ->
    if first > 0 then
      first :: filter_positive rest
    else
      filter_positive rest
;;

let is_mod3_1 n = n mod 3 = 1

let rec filter_mod3_1 lst = match lst with
[] -> []
| first :: rest ->
  if is_mod3_1 first then
    first :: filter_mod3_1 rest
  else
    filter_mod3_1 rest
;;

let rec filter p lst = match lst with
  [] -> []
  | first :: rest ->
    if p first
      then first :: filter p rest
    else
    filter p rest
;;

let filter_mod3_1a lst = filter is_mod3_1 lst ;;

let is_positive n = n > 0 ;;
let filter_positivea lst = filter is_positive lst ;;
