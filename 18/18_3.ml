(* 八百屋においてある野菜と値段のリストの例 *)
let yaoya_list = [("トマト", 300); ("たまねぎ", 200);
                  ("にんじん", 150); ("ほうれん草", 200)] ;;

let rec price item yaoya_list = match yaoya_list with
    [] -> None
  | (y, p) :: rest ->
    if item = y then Some (p) else price item rest
;;

let total_price yasai_list yaoya_list =
  let rec total_price_some yasai_list  = match yasai_list with
      [] -> None
    | first :: rest ->
      match price first yaoya_list with
        None -> None
      | Some (p) -> match total_price_some rest with
          None -> None
        | Some (q) -> Some (p + q)
  in
  match  total_price_some yasai_list with
    None -> 0
  | Some (p) -> p
;;


let test1 = total_price ["トマト"; "にんじん"] yaoya_list = 450
let test2 = total_price ["じゃがいも"; "たまねぎ"; "にんじん"] yaoya_list = 350
;;

print_endline(string_of_bool(test1)) ;;
print_endline(string_of_bool(test2)) ;;
