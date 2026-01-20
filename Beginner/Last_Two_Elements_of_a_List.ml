(**Find the last two (last and penultimate) elements of a list.*)

let rec last_two list = 
  match list with
  | [] -> None
  | [_] -> None
  | [x; y] -> Some (x,y)
  | _ :: t -> last_two t
;;

(*
[_] -> A lista tem apenas 1 elemento, idependentemente desse valor 
*)