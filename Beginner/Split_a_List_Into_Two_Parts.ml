let split lista n = 
  let rec aux lista lista1 lista2 n =
    match lista with
    | [] -> (List.rev lista1, List.rev lista2)
    | h :: t as l-> if n = 0 then (List.rev lista1, l)
    else aux t (h :: lista1) lista2 (n-1)
  in
  aux lista [] [] n
;; 