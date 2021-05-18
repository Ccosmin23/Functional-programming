\begin{code}
mynewmember e xs = foldr (||) False 
                   (map ((==) e) xs)
\end{code}