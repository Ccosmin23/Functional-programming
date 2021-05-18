{-
	Haskell : ex6 lab11 synopsis
-}


\begin{code}

h op ne f []     = ne
h op ne f (x:xs) = op (f x) (h op ne f xs)

stdDev nrs = sqrt (avgsqr - sqravg)
  where
    avgsqr = 1 / len * (h (+) 0 (\x -> x ^ 2) nrs)
    sqravg = (sum / len) ^ 2
    (sum, len) = foldr (\x (s,l) -> (s+x, l+1)) (0, 0) nrs


\end{code}

