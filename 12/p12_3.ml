#use "./p12_1.ml"

let rec shokika lst kanji = match lst with
 [] -> []
 | ({ namae=k; saitan_kyori=s; temae_list=t } as first) :: rest ->
 if k = kanji then
  { namae=k; saitan_kyori=0.; temae_list=[kanji] } :: shokika rest kanji
else
  first :: shokika rest kanji
;;



(* 駅リストの例 *)

let eki_list = [
{namae="池袋"; saitan_kyori = infinity; temae_list = []};
{namae="新大塚"; saitan_kyori = infinity; temae_list = []};
{namae="茗荷谷"; saitan_kyori = infinity; temae_list = []};
{namae="後楽園"; saitan_kyori = infinity; temae_list = []};
{namae="本郷三丁目"; saitan_kyori = infinity; temae_list = []};
{namae="御茶ノ水"; saitan_kyori = infinity; temae_list = []}
]
;;


(* テスト *)
let test1 = shokika [] "茗荷谷" = []
let test2 = shokika eki_list "茗荷谷" = [
{namae="池袋"; saitan_kyori = infinity; temae_list = []};
{namae="新大塚"; saitan_kyori = infinity; temae_list = []};
{namae="茗荷谷"; saitan_kyori = 0.; temae_list = ["茗荷谷"]};
{namae="後楽園"; saitan_kyori = infinity; temae_list = []};
{namae="本郷三丁目"; saitan_kyori = infinity; temae_list = []};
{namae="御茶ノ水"; saitan_kyori = infinity; temae_list = []}
]
;;

print_endline(string_of_bool(test1)) ;;
print_endline(string_of_bool(test2)) ;;
