\begin{code}
filterRec p []    = []
filterRec p (x:xs)
   | p x       = x : filterRec p xs
   | otherwise = filterRec p xs
\end{code}