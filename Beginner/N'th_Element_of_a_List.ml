(*Find the N'th element of a list.*)

let rec at i list = 
  match list with 
  | [] -> None
  | h :: t -> if i = 0 then Some h else at (i-1) t
;;
