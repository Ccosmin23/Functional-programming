{-
    haskell : ex2 synopsis
-}

\begin{code}

firstc = map head
transpose xss = [map(!! i) xss | i <- [0..(length (head xss)) -1]]

\end{code}