#use "../09/p9_10.ml"

let rec get_ekikan_kyori s1 s2 lst = match lst with
  [] -> infinity
  | {kiten=k; shuten=s; keiyu=ke; kyori=ky; jikan=j} :: rest ->
    if (s1 = k && s2 = s) || (s1 = s && s2 = k)
    then
      ky
    else
      get_ekikan_kyori s1 s2 rest
;;

let test1 = get_ekikan_kyori "茗荷谷" "新大塚" global_ekikan_list = 1.2
let test2 = get_ekikan_kyori "茗荷谷" "池袋" global_ekikan_list = infinity
let test3 = get_ekikan_kyori "東京" "大手町" global_ekikan_list = 0.6
;;

(* print_endline(string_of_bool(test1)) ;;
print_endline(string_of_bool(test2)) ;;
print_endline(string_of_bool(test3)) ;; *)
