
\begin{code}

hammingGen n = take n ham where
 ham = 1:merge3 [ 2*i | i <- ham ]
                [ 3*i | i <- ham ]
                [ 5*i | i <- ham ]

merge3 x y z = merge (merge x y) z where
 merge (u:us) (v:vs)
   | u < v     = u:merge us (v:vs)
   | u > v     = v:merge (u:us) vs
   | otherwise = u:merge us vs

\end{code}