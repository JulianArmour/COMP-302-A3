(* Question 1. *)

let rec common twolists =
	match twolists with
  | ([], _) -> []
  | (h :: t, l2) ->
		if memberof (h, l2) then h :: common (remove (h, t), l2)
		else common (t, l2)
;;

(* Question 2. Mergesort requires that you use recursion.  Using List.sort or
some other sort defeats the whole purpose.  This question is for the
implementation of split.*)

let list_len l =
	let rec adder acc l =
		match l with
		| [] -> acc
		| _ :: t -> adder (acc+1) t
	in adder 0 l
;;

(* | (l1, l2) -> (l1@[h1], l2@[h2]) *)

let rec split l =
	match l with
	| [] -> ([], [])
	| h1::h2::t -> (
		match split t with
		| (l1, l2) -> (h1::l1, h2::l2)
	)
	| [x] -> ([x], [])
;;

(* Question 3 Here you implement merge. *)

let rec merge twolists =
  raise NotImplemented
;;

(* Question 4 Finally you combine split and merge and use them to implement mergesort. *)

let rec mergesort l =
  raise NotImplemented
;;
