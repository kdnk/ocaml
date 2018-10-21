type nengou_t =
  Meiji of int
  | Taisho of int
  | Showa of int
  | Heisei of int

let to_seireki nengou = match nengou with
  Meiji (n) -> n + 1867
  | Taisho (n) -> n + 1911
  | Showa (n) -> n + 1925
  | Heisei (n) -> n + 1988

let nenrei birth_year current_year = to_seireki current_year - to_seireki birth_year;;

(* テスト *)
let test1 = nenrei (Showa (42)) (Heisei (18)) = 39 ;;
print_endline(string_of_bool(test1)) ;;
print_endline(string_of_int(nenrei (Showa (42)) (Heisei (18)))) ;;

let test2 = nenrei (Heisei (11)) (Heisei (18)) = 7 ;;
print_endline(string_of_bool(test2)) ;;
print_endline(string_of_int(nenrei (Heisei (11)) (Heisei (18)))) ;;

let test3 = nenrei (Meiji (41)) (Heisei (17)) = 97 ;;
print_endline(string_of_bool(test3)) ;;
print_endline(string_of_int(nenrei (Meiji (41)) (Heisei (17)))) ;;
