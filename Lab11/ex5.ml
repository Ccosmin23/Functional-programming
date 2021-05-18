(*
	ML : ex5 lab11 synopsis
*)

fun sudan n x y =
   if n=0 then x+y
   else if y=0 then x
        else sudan (n-1) (sudan n x (y-1)) (y+(sudan n x (y-1)));

fun matrixSudan4 n i j k =
 if (i=n andalso j=n andalso k=n)
 then [(i,j,k,sudan i j k)]
 else if i=n
      then if j=n
           then (i,j,k,sudan i j k)::(matrixSudan4 n i j (k+1))
           else if k=n
         then (i,j,k,sudan i j k)::(matrixSudan4 n i (j+1) 0)
         else (i,j,k,sudan i j k)::(matrixSudan4 n i j (k+1))
      else if j=n
           then if k=n
        then (i,j,k,sudan i j k)::(matrixSudan4 n (i+1) 0 0)
                else (i,j,k,sudan i j k)::(matrixSudan4 n i j (k+1))
else if k=n 
     then (i,j,k,sudan i j k)::(matrixSudan4 n i (j+1) 0)
     else (i,j,k,sudan i j k)::(matrixSudan4 n i j (k+1));

fun matrixSudan n = matrixSudan4 n 0 0 0;

fun take _ []     = []
 | take 0 _       = []
 | take n (x::xs) = x::(take (n-1) xs);

fun drop _ []     = []
 | drop 0 xs      = xs
 | drop n (x::xs) = drop (n-1) xs;

fun firstFloorSudan n  = take ((n+1)*(n+1)) (matrixSudan n);
fun secondFloorSudan n = take ((n+1)*(n+1))
                              (drop ((n+1)*(n+1)) (matrixSudan n));
                              
