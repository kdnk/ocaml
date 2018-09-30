type person_t = {
  name : string;
  shincho : float;
  taiju : float;
  tsuki : int;
  hi: int;
  ketsueki : string;
}

let person1 = {
  name = "浅井";
  shincho = 1.72;
  taiju = 58.5;
  tsuki = 9;
  hi = 17;
  ketsueki = "A"
}

let person2 = {
  name = "宮原";
  shincho = 1.63;
  taiju = 55.0;
  tsuki = 6;
  hi = 30;
  ketsueki = "B"
}

let person3 = {
  name = "中村";
  shincho = 1.68;
  taiju = 63.0;
  tsuki = 6;
  hi = 6;
  ketsueki = "O"
}

let rec person_insert lst person0 = match lst with
  [] -> [person0]
  | ({ name = n; shincho = s; taiju = t; tsuki = tu; hi = h; ketsueki = k } as first) :: rest ->
    match person0 with
      { name = n0; shincho = s0; taiju = t0; tsuki = tu0; hi = h0; ketsueki = k0 } ->
        if n < n0
        then
          first :: person_insert rest person0
        else
          person0 :: lst
;;

let rec person_insert lst person0 = match lst with
    [] -> [person0]
  | ({name = n; shincho = s; taiju = t; tsuki = ts; hi = h; ketsueki = k}
     as person) :: rest ->
      match person0 with
        {name = n0; shincho = s0; taiju = t0;
	 tsuki = ts0; hi = h0; ketsueki = k0} ->
	  if n > n0 then person :: person_insert rest person0
	  else person0 :: lst

let rec person_ins_sort lst = match lst with
  [] -> []
  | first :: rest ->
    person_insert (person_ins_sort rest) first
;;

let test1 = person_insert [] person1 = [person1]
let test2 = person_insert [person2] person1 = [person1; person2]
let test3 = person_insert [person1] person2 = [person1; person2]
let test4 = person_insert [person1; person2] person3 = [person1; person2; person3]
;;

let lst1 = []
let lst2 = [person1]
let lst3 = [person1; person2]
let lst4 = [person2; person1]
let lst5 = [person3; person1; person2]
;;

let test5 = person_ins_sort lst1 = []
let test6 = person_ins_sort lst2 = [person1]
let test7 = person_ins_sort lst3 = [person1; person2]
let test8 = person_ins_sort lst4 = [person1; person2]
let test9 = person_ins_sort lst5 = [person1; person2; person3]
;;

print_endline(string_of_bool(test1)) ;;
print_endline(string_of_bool(test2)) ;;
print_endline(string_of_bool(test3)) ;;
print_endline(string_of_bool(test4)) ;;

print_endline(string_of_bool(test5)) ;;
print_endline(string_of_bool(test6)) ;;
print_endline(string_of_bool(test7)) ;;
print_endline(string_of_bool(test8)) ;;
print_endline(string_of_bool(test9)) ;;
