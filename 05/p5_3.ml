(* 目的：月と日を受け取ってきたら星座を返す *) 
(* seiza : int -> int -> string *) 
let seiza tsuki hi = 
  if tsuki = 1 then if 1 <= hi && hi <= 19 then "山羊座" 
    else if 20 <= hi && hi <= 31 then "水瓶座" 
    else "なし" 
  else if tsuki = 2 then if 1 <= hi && hi <= 18 then "水瓶座" 
    else if 19 <= hi && hi <= 29 then "魚座" 
    else "なし" 
  else if tsuki = 3 then if 1 <= hi && hi <= 20 then "魚座" 
    else if 21 <= hi && hi <= 31 then "牡羊座" 
    else "なし" 
  else if tsuki = 4 then if 1 <= hi && hi <= 19 then "牡羊座" 
    else if 20 <= hi && hi <= 30 then "牡牛座" 
    else "なし" 
  else if tsuki = 5 then if 1 <= hi && hi <= 20 then "牡牛座" 
    else if 21 <= hi && hi <= 31 then "双子座" 
    else "なし" 
  else if tsuki = 6 then if 1 <= hi && hi <= 21 then "双子座" 
    else if 22 <= hi && hi <= 30 then "蟹座" 
    else "なし" 
  else if tsuki = 7 then if 1 <= hi && hi <= 22 then "蟹座" 
    else if 23 <= hi && hi <= 31 then "獅子座" 
    else "なし" 
  else if tsuki = 8 then if 1 <= hi && hi <= 22 then "獅子座" 
    else if 23 <= hi && hi <= 31 then "乙女座" 
    else "なし" 
  else if tsuki = 9 then if 1 <= hi && hi <= 22 then "乙女座" 
    else if 23 <= hi && hi <= 30 then "天秤座" 
    else "なし" 
  else if tsuki = 10 then if 1 <= hi && hi <= 23 then "天秤座" 
    else if 24 <= hi && hi <= 31 then "蠍座" 
    else "なし" 
  else if tsuki = 11 then if 1 <= hi && hi <= 21 then "蠍座" 
    else if 22 <= hi && hi <= 30 then "射手座" 
    else "なし" 
  else if tsuki = 12 then if 1 <= hi && hi <= 21 then "射手座" 
    else if 22 <= hi && hi <= 31 then "山羊座" 
    else "なし" 
  else "なし" 

(* テスト *) 
let test1 = seiza 6 11 = "双子座" 
let test2 = seiza 6 30 = "蟹座" 
let test3 = seiza 9 17 = "乙女座"
let test4 = seiza 10 7 = "天秤座"
