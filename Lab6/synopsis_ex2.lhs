{-
    Haskell - ex2 synopsis
-}

\begin{code}

prodl :: [Integer] -> Integer
prodl [] = 1
prodl [n] = n
prodl (n:ns) = n * prodl ns

\end{code}
