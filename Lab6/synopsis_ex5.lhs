{-
    Haskell - ex5 synopsis
-}

\begin{code}

p2 :: Int -> Integer
p2 n | n == 0 = 1
     | even n =  hp * hp
     | otherwise = 2 * hp * hp
    where
        hp = p2(n `div` 2)
\end{code}
