type 'a rle =
  | One of 'a 
  | Many of int * 'a 
 
let decode list = 
  let rec add_elem acc n elem =
    if n <> 0 then add_elem (elem::acc) (n-1) elem else acc
  in
  let rec aux list acc =
    match list with 
      | [] -> acc
      | One h :: t -> aux t (h :: acc)
      | Many (n, h) :: t -> aux t (add_elem acc n h)
  in 
  List.rev(aux list [])
;;

