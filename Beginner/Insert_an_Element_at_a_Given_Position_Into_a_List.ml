let rec insert_at x n = function 
  | [] -> [x] 
  | h :: t -> if n = 0 then x :: h :: t else h :: insert_at x (n-1) t
;;