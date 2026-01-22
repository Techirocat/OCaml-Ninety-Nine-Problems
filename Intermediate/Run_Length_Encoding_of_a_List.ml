type 'a rle = 
  | One of 'a
  | Many of int * 'a
;;

let encode list =
    let rec aux count acc list =
      match list with 
      | [] -> acc
      | [x] -> Many (count + 1, x) :: acc
      | a :: (b :: _ as t) -> if a = b then aux (count + 1) acc t
        else 
          if count = 0 then aux 0 ((One a) :: acc) t 
          else aux 0 ((Many (count + 1, a)) :: acc) t
    in
    List.rev (aux 0 [] list);;
