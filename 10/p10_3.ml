type gakusei_t = {
  namae : string;       (* 名前 *)
  tensuu : int;         (* 点数 *)
  seiseki : string;     (* 成績 *)
}

let gakusei1 = {namae="nakamura"; tensuu=90; seiseki="A"}
let gakusei2 = {namae="miyahara"; tensuu=80; seiseki="A"}
let gakusei3 = {namae="sato"; tensuu=75; seiseki="B"}
let gakusei4 = {namae="idehara"; tensuu=70; seiseki="B"}
let gakusei5 = {namae="tsubata"; tensuu=65; seiseki="C"}
let gakusei6 = {namae="asai"; tensuu=60; seiseki="C"}

let rec gakusei_insert lst g = match lst with
  [] -> [g]
  | ({ namae = n; tensuu = t; seiseki = s } as first) :: rest ->
    match g with
      { namae = gn; tensuu = gt; seiseki = gs } ->
        if gt < t
          then
            g :: lst
          else
            first :: gakusei_insert rest g
;;

let rec gakusei_ins_sort lst = match lst with
  [] -> []
  | first :: rest ->
    gakusei_insert (gakusei_ins_sort rest) first
;;

let lst1 = []
let lst2 = [gakusei2]
let lst3 = [gakusei3; gakusei4]
let lst4 = [gakusei4; gakusei3]
let lst5 = [gakusei4; gakusei1; gakusei6; gakusei5; gakusei2; gakusei3]

let test1 = gakusei_insert [] gakusei2 = [gakusei2]
let test2 = gakusei_insert [gakusei4] gakusei3 = [gakusei4; gakusei3]
let test3 = gakusei_insert [gakusei3] gakusei4 = [gakusei4; gakusei3]
let test4 = gakusei_insert [gakusei6; gakusei5; gakusei3; gakusei2; gakusei1]
			   gakusei4 = [gakusei6; gakusei5; gakusei4; gakusei3; gakusei2; gakusei1]
;;

print_endline(string_of_bool(test1)) ;;
print_endline(string_of_bool(test2)) ;;
print_endline(string_of_bool(test3)) ;;
print_endline(string_of_bool(test4)) ;;

let test5 = gakusei_ins_sort lst1 = []
let test6 = gakusei_ins_sort lst2 = [gakusei2]
let test7 = gakusei_ins_sort lst3 = [gakusei4; gakusei3]
let test8 = gakusei_ins_sort lst4 = [gakusei4; gakusei3]
let test9 = gakusei_ins_sort lst5
	    = [gakusei6; gakusei5; gakusei4; gakusei3; gakusei2; gakusei1]
;;

print_endline(string_of_bool(test5)) ;;
print_endline(string_of_bool(test6)) ;;
print_endline(string_of_bool(test7)) ;;
print_endline(string_of_bool(test8)) ;;
print_endline(string_of_bool(test9)) ;;
