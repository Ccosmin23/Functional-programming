
\begin{code}

	mapRec f [] = []
	mapRec f (x:xs) = f x : mapRec f xs

\end{code}