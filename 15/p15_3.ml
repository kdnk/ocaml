let rec sieve lst = match lst with
  [] -> []
  | first :: rest ->
    first :: sieve (List.filter (fun x -> x mod first <> 0) rest)
;;

let two_to_n n =
  let rec loop start =
    if start <= n then start :: loop (start + 1) else []
  in
  loop 2


let prime n = sieve (two_to_n n)
;;


(* テスト *)
let test1 = sieve [2; 3; 4; 5; 6; 7; 8; 9; 10] = [2; 3; 5; 7] ;;
let test2 = two_to_n 10 = [2; 3; 4; 5; 6; 7; 8; 9; 10];;
let test3 = prime 10 = [2; 3; 5; 7];;

print_endline(string_of_bool(test1)) ;;
print_endline(string_of_bool(test2)) ;;
print_endline(string_of_bool(test3)) ;;
