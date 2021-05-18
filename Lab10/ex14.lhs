
\begin{code}

mynewerlength = mynewsum . (map (combK 1))
	where combK n x = n
			mynewsum = foldr (+) 0
\end{code}: