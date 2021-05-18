{-
	haskell : ex 3 lab8 solutions
-}


\begin{code}

	h op ne f [] = ne
	h op ne f (x:xs) = op (f x) (h op ne f xs)
	v1 = [1,2,3]
	v2 = [2,4,3]
	innerProduct xs ys = h (+) 0 (\ (x,y) -> (x*y)) (zip xs ys)
	innerProductZ xs ys = foldr (+) 0 (zipWith (*) xs ys)

\end{code}







