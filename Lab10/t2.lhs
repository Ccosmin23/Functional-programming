\begin{code}

t2 n = t2a 1 [1] where
  t2a k cs
    | k == n-1  = head cs
    | otherwise = t2a (k+1) (cn:cs) where
                    cn = sum (zipWith (*)
                              cs (reverse cs))

\end{code}