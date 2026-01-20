let rec duplicate lista =
  match lista with
  | [] -> []
  | h :: t -> h :: h :: duplicate t 
;;
