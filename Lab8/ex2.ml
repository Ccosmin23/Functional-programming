(* 
	ML : ex 3 lab8 solutions
*)

exception InfSolution;
exception NoSolution;


fun eq0 x = x>=0.0 andalso x<=0.0;

fun equation a b = if eq0 a
	then if eq0 b
	then raise InfSolution
	else raise NoSolution
	else ~b / a;