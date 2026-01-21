let range x y =
  let rec aux x y list =
    if x = y then y::list else aux x (y-1) (y::list) 
  in 
    if x > y then List.rev (aux y x []) else aux x y []
;;
