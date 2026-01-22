(*# slice ["a"; "b"; "c"; "d"; "e"; "f"; "g"; "h"; "i"; "j"] 2 6;;*)

let slice list i k = 
  let rec aux list j acc = 
    match list with 
    | [] -> acc
    | h :: t -> 
      if j < i then aux t (j+1) acc 
      else if j > k then acc else aux t (j+1) (h::acc)
  in
  List.rev (aux list 0 [])
;; 
