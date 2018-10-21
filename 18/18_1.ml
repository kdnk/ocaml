(* 八百屋においてある野菜と値段のリストの例 *)
let yaoya_list = [("トマト", 300); ("たまねぎ", 200);
                  ("にんじん", 150); ("ほうれん草", 200)] ;;

let rec price item yaoya_list = match yaoya_list with
    [] -> None
  | (y, p) :: rest ->
    if item = y then Some (p) else price item rest
;;
