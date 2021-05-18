
\begin{code}

member e [] = False
member e (x:xs)
 | e==x = True
 | otherwise = member e xs

\end{code}