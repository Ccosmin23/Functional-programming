
\begin{code}

mynewany p xs =  foldr (||) False (map p xs)

\end{code}