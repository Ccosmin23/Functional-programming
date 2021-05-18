
\begin{code}

mynewlength xs = mynewsum (map (combK 1) xs)
	where combK n x = n
		mynewsum = foldr (+) 0

\end{code}