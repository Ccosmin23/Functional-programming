-- autor : Cosmin Cosan
{-
Haskell - ex1 from synopsis
-}

\begin{code}
prodl :: [Integer] -> Integer
prodl ns = if(length ns == 1) then head ns
            else if(length ns > 1) then (head ns) * prodl (tail ns)
            else 1
\end{code}
