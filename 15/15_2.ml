(* let rec take_less n lst = match lst with
  [] -> []
  | first :: rest ->
    if first < n then
      first :: take_less first rest
    else
      take_less first rest
;; *)

(* let take_less n lst = List.filter (fun item -> item < n) lst ;; *)

(* let rec take_greater n lst = match lst with
  [] -> []
  | first :: rest ->
    if first > n then
      first :: take_greater first rest
    else
      take_greater first rest
;; *)

(* let take_greater n lst = List.filter (fun item -> item > n) lst ;; *)

(* let take n lst p = List.filter (fun item -> p item n) lst ;;

let take_less n lst = take n lst ( < ) ;;
let take_greater n lst = take n lst ( > ) ;;

let rec quick_sort lst = match lst with
  [] -> []
  | first :: rest ->
    quick_sort (take_less first rest)
      @ [first]
      @ quick_sort (take_greater first rest)
;; *)

let rec quick_sort lst =
  let take n lst p = List.filter (fun item -> p item n) lst
  in let take_less n lst = take n lst ( < )
  in let take_greater n lst = take n lst ( > )
  in match lst with
    [] -> []
    | first :: rest ->
      quick_sort (take_less first rest)
      @ [first]
      @ quick_sort (take_greater first rest)
;;

let test1 = quick_sort [] = []
let test2 = quick_sort [1] = [1]
let test3 = quick_sort [1; 2] = [1; 2]
let test4 = quick_sort [2; 1] = [1; 2]
let test5 = quick_sort [5; 4; 9; 8; 2; 3] = [2; 3; 4; 5; 8; 9] ;;

print_endline(string_of_bool(test1)) ;;
print_endline(string_of_bool(test2)) ;;
print_endline(string_of_bool(test3)) ;;
print_endline(string_of_bool(test4)) ;;
print_endline(string_of_bool(test5)) ;;
