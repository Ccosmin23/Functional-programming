{-
	Haskell : ex5 lab11 synopsis
-}

\begin{code}

sudan n x y =
   if n == 0 then x+y
   else if y == 0 then x
        else sudan (n-1) (sudan n x (y-1)) (y+sudan n x (y-1))

matrixSudan n = [(m,x,y,sudan m x y) |
                         m<-[0..n],
                         x<-[0..n],
                         y<-[0..n]]

firstFloorSudan n  = take ((n+1)*(n+1)) (matrixSudan n)
secondFloorSudan n = take ((n+1)*(n+1))
                     (drop ((n+1)*(n+1)) (matrixSudan n))


\end{code}
