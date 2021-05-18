{-
    Haskell : ex3 synopsis
-}

\begin{code}

prodl :: [Integer] -> Integer
prodl ns = case ns of
            [k] -> k
            (k:ks) -> k * prodl ks
            _ -> 1

\end{code}


