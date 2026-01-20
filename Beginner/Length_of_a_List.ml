(*Find the number of elements of a list.*)

let length lista = 
  let rec aux lista i = 
    match lista with 
    | [] -> i;
    | _ :: t -> aux t (i+1)
  in
  aux lista 0
;; 