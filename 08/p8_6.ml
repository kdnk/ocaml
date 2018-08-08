#use "p8_5.ml"

let ekimei1 = {kanji="茗荷谷"; kana="みょうがだに";
               romaji="myogadani"; shozoku="丸ノ内線"}
let ekimei2 = {kanji="渋谷"; kana="しぶや";
               romaji="shibuya"; shozoku="銀座線"}
let ekimei3 = {kanji="大手町"; kana="おおてまち";
               romaji="otemachi"; shozoku="千代田線"}

let hyoji ekimei = match ekimei with
    { kanji = k; kana = a; romaji = r; shozoku = s } -> s ^ "、" ^ k ^ "（" ^ a ^ "）"
;;

(* テスト *)
let test1 = hyoji ekimei1 = "丸ノ内線、茗荷谷（みょうがだに）"
let test2 = hyoji ekimei2 = "銀座線、渋谷（しぶや）"
let test3 = hyoji ekimei3 = "千代田線、大手町（おおてまち）" ;;

print_endline(string_of_bool(test1)) ;;
print_endline(string_of_bool(test2)) ;;
print_endline(string_of_bool(test3)) ;;
