{-
	haskell : ex 5 lab 7 solutions
-}

\begin{code}

	tosoftmax nrs = map (\x -> (exp x / s )) nrs where
		s = sum (map (\x -> exp x) nrs)

	tosoftmax05 nrs = map (/s) expos where
		expos = [exp n | n <- nrs]
		s = sum expos

	divby n ns = if (null ns) then []
				 else (head ns / n) : divby n (tail ns)

	tosoftmax01 nrs = tosoftmax01acc nrs [] 0

	tosoftmax01acc nrs accnrs a =
		if (null nrs) then (divby a (reverse accnrs))
		else (tosoftmax01acc (tail nrs)
							  (exp (head nrs) : accnrs)
							  (exp (head nrs) + a))

	logits = [2.0, 1.0, 0.1]
	probabilities = [0.7, 0.2, 0.1]

\end{code}





