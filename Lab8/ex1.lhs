{-
	haskell : ex 1 lab8 solutions
-}


\begin{code}
	inters [] _ = []
	inters _ [] = []
	inters (a:s) (b:t)
	    | a == b = a : inters s t
	    | a < b = inters s (b : t)
	    | otherwise = inters (a : s) t

	factors n = [x | x <- [1..n], n `mod` x == 0]
	commonFactors n1 n2 = inters (factors n1) (factors n2)


\end{code}