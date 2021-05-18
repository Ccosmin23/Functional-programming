
\begin{code}

myrev [] = []
myrev (x:xs) = myrev xs ++ [x]

\end{code}