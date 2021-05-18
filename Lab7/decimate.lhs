{-
	haskell : ex 4 solutions lab7
-}


\begin{code}

	decimate xs n =
		decim xs n 1
			where 
				decim [] _ _ = []
				decim (x : xs) n i =
					if i > n then x : xs
					else if i < n then x : (decim xs n (i + 1))
					else (decim xs n 1)

\end{code}
