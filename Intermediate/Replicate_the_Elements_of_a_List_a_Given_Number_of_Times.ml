(*# replicate ["a"; "b"; "c"] 3;;*)

let replicate list n = 
  let rec add acc n x =
    if n = 0 then acc else add (x::acc) (n-1) x
  in 
  let rec aux list acc n =
    match list with 
    | [] -> acc 
    | h :: t -> aux t (add acc n h) n
  in 
  List.rev (aux list [] n)
;;