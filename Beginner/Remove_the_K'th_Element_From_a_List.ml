let rec remove_at n list =
  match list with 
  | [] -> []
  | h :: t -> if n = 0 then t else h :: remove_at (n-1) t 
;;

(*
Para concatenar duas listas usa-se o "@" 
exemplo: lista1 @ lista2

Para concatenar/adicionar um elemento a lista usa-se "::"

elemento :: lista
*)