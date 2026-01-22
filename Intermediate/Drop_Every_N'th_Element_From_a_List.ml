(*# drop ["a"; "b"; "c"; "d"; "e"; "f"; "g"; "h"; "i"; "j"] 3;;*)

let drop list n = 
  let rec aux list acc x = 
    match list with 
    | [] -> acc 
    | h :: t -> if x = 1 then aux t acc n else aux t (h::acc) (x-1)
  in 
  List.rev (aux list [] n)
;;