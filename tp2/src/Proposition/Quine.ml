open Formule

(** Substitue une formule g à un atome s dans une formule. *)
let subst : formule -> string -> formule -> formule =
 fun g s f -> 
 let rec aux = function
	 | Atome x when x = s -> g
	 | Imp(f1, f2) -> Imp(aux f1, aux f2)
	 | Et(f1, f2) -> Et(aux f1, aux f2)
	 | Ou(f1, f2) -> Ou(aux f1, aux f2)
	 | Non f1 -> Non(aux f1)
	 |a -> a
 in 
 aux f;;

(** Choisit un atome d'une formule, renvoyant None si aucun n'est présent.*)

let choix_atome : formule -> string option = fun f -> 
	match(f) with 
	| [] -> None
	| Some x -> x

(** Simplifie une formule d'une manière paresseuse. *)
let simplif_quine : formule -> formule = fun f -> 
	

(** Teste si une formule est satisfaisable, selon l'algorithme de Quine. *)
let quine_sat : formule -> bool = fun _ -> failwith "à faire"

(** Teste si une formule est une tautologie, selon l'algorithme de Quine. *)
let quine_tauto : formule -> bool = fun _ -> failwith "à faire"

(** Teste si une formule est une contradiction, selon l'algorithme de Quine. *)
let quine_contra : formule -> bool = fun _ -> failwith "à faire"

(** Teste si une formule est satisfaisable, renvoyant None si ce n'est pas le cas
      et Some res sinon, où res est une liste de couples (atome, Booléen)
      suffisants pour que la formule soit vraie. *)
let quine_ex_sat : formule -> (string * bool) list option =
 fun _ -> failwith "à faire"

(** Renvoie la liste des listes de couples (atome, Booléen) suffisants pour que la formule soit vraie,
    selon la formule de Quine.*)
let quine_all_sat : formule -> (string * bool) list list =
 fun _ -> failwith "à faire"
