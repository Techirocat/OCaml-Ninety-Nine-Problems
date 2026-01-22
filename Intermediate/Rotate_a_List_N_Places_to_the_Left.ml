(*# rotate ["a"; "b"; "c"; "d"; "e"; "f"; "g"; "h"] 3;;*)

let rotate list n = 
  let rec aux list n acc = 
    match list with 
    | [] -> []
    | h :: t -> if n = 0 then (list @ List.rev acc) else aux t (n-1) (h::acc)
  in 
  aux list (n mod List.length list) []
;;
