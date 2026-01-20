(**Write a function last : 'a list -> 'a option that returns the last element of a list*)

let rec last list = 
  match list with 
  | [] -> None
  | [x] -> Some x
  | _ :: t -> last t
;;

(** 
:: é prenunciado "cons". É usado tanto para construtir listas quanto para
as descontruir.
Neste caso a lista é separada em duas partes:
  - a cabeça (apenas o primeiro elemento)
  - a cauda (os restantes elementos)

o underscore é chamado de wildcard. É usado quando sabemos que existe um
valor naquela posição, mas não precisamos de usar o valor, assim não damos um nome.


*)