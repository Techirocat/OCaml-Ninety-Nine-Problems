(*# rand_select ["a"; "b"; "c"; "d"; "e"; "f"; "g"; "h"] 3;;*)

let rand_select list n = 
  let len = List.length list in

  let rec choose list acc j = 
    match list with
    | [] -> acc 
    | h :: t -> if j = 0 then (h::acc) else choose t acc (j-1)
  in

  let rec aux i acc = 
    if i = n then acc else aux (i+1) (choose list acc (Random.int len))
  in 
  aux 0 []
;;
