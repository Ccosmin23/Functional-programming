\begin{code}
hammingGen n = 
   let ham = 1:merge3 [ 2*i | i <- ham ] 
                      [ 3*i | i <- ham ]
                      [ 5*i | i <- ham ]
   in take n ham  			       
\end{code}

\begin{code}
merge3 x y z = 
   merge x (merge y z)
   where
      merge (u:us) (v:vs) 
         | u < v     = u:merge us (v:vs) 
         | u > v     = v:merge (u:us) vs 
         | otherwise = u:merge us vs   
\end{code}