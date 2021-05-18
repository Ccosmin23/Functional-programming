{-
	haskell : union - ex1 synopsis lab8 
-}

\begin{code}

union' :: (Eq a) => [a] -> [a] -> [a]
union' xs ys = xs ++ union'' ys xs

	where union'' [] = []
	      union'' (a:as) first =
	      	if (a `elem` first) then union'' as first
	      	else a : union'' as (a:first)

\end{code}