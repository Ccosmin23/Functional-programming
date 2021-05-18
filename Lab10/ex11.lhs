
\begin{code}

mynewall p xs = foldr (&&) True (map p xs)

\end{code}