# use "p8_3.ml" ;;

let ketsueki_hyoji person = match person with
    { name = n; shincho = s; taiju = ta; tsuki = ts; hi= h; ketsueki = k} ->
    n ^ "さんの血液型は " ^ k ^ " 型です"
;;

(* test *)
let test1 = ketsueki_hyoji person1 = "浅井さんの血液型は A 型です"
let test2 = ketsueki_hyoji person2 = "宮原さんの血液型は B 型です"
let test3 = ketsueki_hyoji person3 = "中村さんの血液型は O 型です"
;;

print_endline(string_of_bool(test1)) ;;
print_endline(string_of_bool(test2)) ;;
print_endline(string_of_bool(test3)) ;;
