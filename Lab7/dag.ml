
(*
	ML : ex 6 solutions lab7 
*)


	val dag = [("a","b"),("a","c"),("a","d"),
				("b","e"),("c","f"),("d","e"),
				("e","f"),("e","g")];

	fun member (_,[]) = false
		| member (x,y::ys) =
			if x=y then true
			else member (x,ys);


	fun reverse [] = []
		| reverse (x::xs) = reverse xs @ [x];


	fun succ (x, []) = []
		| succ (x,(y,z)::lp) =
			if x = y then z::succ(x,lp)
			else succ(x,lp);


	fun df ([],dag,vis) = reverse (vis)
		| df (x::xs,dag,vis) =
			if member (x,vis) then df (xs,dag,vis)
			else df (succ (x,dag)@xs,dag,x::vis);


	fun bf([],dag,vis) = reverse(vis)
		| bf(x::xs,dag,vis) =
			if member(x,vis) then bf(xs,dag,vis)
			else bf(xs@succ(x,dag),dag,x::vis);


	fun topsort dag =
		let fun sort ([], vis) = vis
		| sort (x::xs, vis) =
		sort (xs,
			if member (x, vis) then vis
			else x::sort(succ(x,dag), vis))

	fun unzip [] = ([], [])
		| unzip ((x,y)::zs) =
		let
			val (xs,ys) = unzip zs
			in
				(x::xs,y::ys)
			end;
		val (start,_) = unzip dag
			in
				sort(start,[])
			end;
		val dag1 = [("a","b"),("b","d"),("d","f"),("a","c"),("c","e"),("e","f")]
		val dag = [("a","b"),("b","d"),("d","f"), ("a","c"),("c","e"),("e","f")];














