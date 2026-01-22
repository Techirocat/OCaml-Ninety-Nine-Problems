let pack list = 
  let rec aux list acc curr = 
    match list with 
    | [] -> [] 
    | [x] -> (x::curr) :: acc 
    | h1 :: (h2 :: _ as l) -> if h1 = h2 then aux l acc (h1::curr)
    else aux l ((h1::curr)::acc) []
  in 
  List.rev(aux list [] [])
;;