let encode list =
    let rec aux count acc = function
      | [] -> []
      | [x] -> (count + 1, x) :: acc
      | a :: (b :: _ as t) -> if a = b then aux (count + 1) acc t
        else aux 0 ((count + 1, a) :: acc) t 
    in
    List.rev (aux 0 [] list);;

(*O as cria um apelido para o padrão à esquerda, permitindo
 que a variável t armazene a lista inteira que começa em b ao
  mesmo tempo que o padrão a decompõe.*)