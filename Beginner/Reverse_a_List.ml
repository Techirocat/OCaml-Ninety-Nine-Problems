(*Reverse a list.*)

let rev lista =
  let rec aux lista1 lista2 =
    match lista1 with 
    | [] -> lista2
    | h :: t -> aux t (h :: lista2)
  in
  aux lista []
;;