{-
	haskell : ex 8 solutions lab7
-}


\begin{code}

	genN d n
		| n == 0 = []
		| otherwise = d:genN d (n-1)


	addBigs1 [] [] 0 = []
	addBigs' [] [] 1 = [1]
	addBigs' (x:xs) (y:ys) r = nd:(addBigs' xs ys nr)
		where
			nd = (x+y+r) `mod` 10
			nr = (x+y+r) `div` 10


	addBigs l1 l2
		| ne1 < ne2 = addBigs' (l1 ++ (genN 0 (ne2 - ne1))) l2 0
		| otherwise = addBigs' l1 (l2 ++ (genN 0 (ne1 - ne2))) 0
			where
				ne1 = length l1
				ne2 = length l2


\end{code}






























