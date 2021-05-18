(*tasks 8.1*)
(*ex 1 ML*)

fun inters [] _ = []
  | inters _ [] = []
  | inters (a::s) (b::t) =
  if a = b then a::(inters s t)
  else if (a < b) then inters s (b::t)
  else inters (a::s) t;

fun reverse xs = let
fun rev [] acc =
  acc | rev (x::xs) acc = rev xs (x::acc)
    in
      rev xs []
    end;

fun allfact n i l =
  if (i > n div 2)
      then reverse (n::l)
  else if (n mod i = 0)
      then allfact n (i+1) (i::l)
  else allfact n (i+1) l;

fun factors n = allfact n 2 [1];

fun commonFactors n1 n2 = inters (factors n1) (factors n2);


