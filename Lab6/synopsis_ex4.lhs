{-
    Haskell - ex4 synopsis
-}

\begin{code}

prodl :: [Integer] -> Integer
prodl [] = 1
prodl (n:ns) | null ns = n
             | otherwise = n * prodl ns

\end{code}
