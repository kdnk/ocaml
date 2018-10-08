let rec enumerate n =
  if n = 0 then
    []
  else
    n :: enumerate (n - 1)
;;

let divisor n =  List.filter (fun x -> n mod x = 0) (enumerate n)  ;;

let perfect m = List.filter (fun n -> List.fold_right (+) (divisor n) 0 - n = n) (enumerate m) ;;

let test2 = perfect 10000 = [8128; 496; 28; 6] ;;

print_endline(string_of_bool(test2)) ;;
