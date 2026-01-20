(*Find out whether a list is a palindrome.*)

let rev lista =
  let rec aux lista1 lista2 =
    match lista1 with 
    | [] -> lista2
    | h :: t -> aux t (h :: lista2)
  in
  aux lista []
;;

let is_palindrome list = 
  list = rev list
;;