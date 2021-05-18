
\begin{code}

 merge3 x y z = merge (merge x y) z where
merge (u:us) (v:vs)
| u < v = u:merge us (v:vs)
| u > v = v:merge (u:us) vs
| otherwise = u:merge us vs


\end{code}