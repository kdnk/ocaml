(* 学生ひとり分のデータ（名前、点数、成績）を表す型 *)
type gakusei_t = {
  namae : string;       (* 名前 *)
  tensuu : int;         (* 点数 *)
  seiseki : string;     (* 成績 *)
}

let rec gakusei_max lst = match lst with
  [] -> { namae = ""; tensuu = min_int; seiseki = "" }
  | ({ namae = n; tensuu = t; seiseki = s } as first) :: rest ->
    match gakusei_max rest with
      { namae = n_max; tensuu = t_max; seiseki = s_max } ->
        if t > t_max
        then
          first
        else
          gakusei_max rest
;;

let gakusei1 = {namae="nakamura"; tensuu=90; seiseki="A"}
let gakusei2 = {namae="miyahara"; tensuu=80; seiseki="A"}
let gakusei3 = {namae="sato"; tensuu=75; seiseki="B"}
let gakusei4 = {namae="idehara"; tensuu=70; seiseki="B"}
let gakusei5 = {namae="tsubata"; tensuu=65; seiseki="C"}
let gakusei6 = {namae="asai"; tensuu=60; seiseki="C"}
;;

let lst1 = [gakusei2]
let lst2 = [gakusei3; gakusei4]
let lst3 = [gakusei4; gakusei3]
let lst4 = [gakusei4; gakusei1; gakusei6; gakusei5; gakusei2; gakusei3]
;;

let test1 = gakusei_max lst1 = gakusei2
let test2 = gakusei_max lst2 = gakusei3
let test3 = gakusei_max lst3 = gakusei3
let test4 = gakusei_max lst4 = gakusei1
;;

print_endline(string_of_bool(test1)) ;;
print_endline(string_of_bool(test2)) ;;
print_endline(string_of_bool(test3)) ;;
print_endline(string_of_bool(test4)) ;;
