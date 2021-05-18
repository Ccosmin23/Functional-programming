
{-
	Haskell : ex3 lab11 synopsis
-}

\begin{code}

leapYears =
  iterate
    (\ y -> (if (y `mod` 100 == 0 && y `mod` 400 /= 0) then (y+8) else (y+4)))
    1584

\end{code}

