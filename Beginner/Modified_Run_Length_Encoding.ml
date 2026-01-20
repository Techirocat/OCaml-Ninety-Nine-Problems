(*
Criar um novo tupo de dado. 
'a -> significa que pode ser qualquer tipo de dado, int, string, etc, é o T em java
int * 'a -> é um tuplo (int , 'a)
*)
type 'a rle =
| One of 'a 
| Many of int * 'a
;;

let encode list =
    let create_tuple cnt elem = 
      if cnt = 1 then One elem
      else Many (cnt, elem)   
    in

    let rec aux count acc = function
      | [] -> []
      | [x] -> create_tuple (count + 1) x :: acc
      | a :: (b :: _ as t) -> if a = b then aux (count + 1) acc t
        else aux 0 (create_tuple (count + 1) a :: acc) t 
    in
    List.rev (aux 0 [] list);;
