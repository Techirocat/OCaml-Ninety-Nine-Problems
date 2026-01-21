let compress list = 
  let rec aux acc = function
    | [] -> acc
    | [h] -> h :: acc
    | h1 :: (h2 :: t) -> if h1 = h2 then aux acc (h2::t) else aux (h1::acc) (h2::t)
  in 
  List.rev (aux [] list)
;;