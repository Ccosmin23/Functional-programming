--comentarii
\begin{code}
sud n x y = if n==0 then (x+y)
    else if n > 0 and y==0 then x
    else sud (n-1) (sud n x (y-1)) (y + (sud n x (y - 1)))
\end{code}
