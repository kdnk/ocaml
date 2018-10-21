exception Urikire

let rec price item yaoya_list = match yaoya_list with
    [] -> raise Urikire
  | (y, s) :: rest ->
    if item = y then s else price item rest
;;

let total_price yasai_list yaoya_list =
  let rec total_price_some yasai_list  = match yasai_list with
      [] -> 0
    | first :: rest ->
      price first yaoya_list + total_price_some rest
  in try
    total_price_some yasai_list
  with
    Urikire -> 0
;;

let yaoya_list = [("トマト", 300); ("たまねぎ", 200);
                  ("にんじん", 150); ("ほうれん草", 200)]

(* テスト *)
let test1 = total_price ["たまねぎ"; "にんじん"] yaoya_list = 350
let test2 = total_price ["たまねぎ"; "じゃがいも"; "にんじん"] yaoya_list = 0
let test3 = total_price ["トマト"; "にんじん"] yaoya_list = 450
