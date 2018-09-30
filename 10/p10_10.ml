#use "../09/p9_9.ml"

let rec romaji_to_kanji str lst = match lst with
  [] -> ""
  | { kanji=k; kana=ka; romaji=r; shozoku=s } :: rest ->
    if str = r
      then k
      else romaji_to_kanji str rest
;;

let test1 = romaji_to_kanji "myogadani" global_ekimei_list = "茗荷谷"
let test2 = romaji_to_kanji "shibuya" global_ekimei_list = "渋谷"
let test3 = romaji_to_kanji "otemachi" global_ekimei_list = "大手町"
;;

(* print_endline(string_of_bool(test1)) ;;
print_endline(string_of_bool(test2)) ;;
print_endline(string_of_bool(test3)) ;; *)
