{-
	haskell : crossEnt - ex1 tasks synopsis8
-}

\begin{code}

crossEnt :: Floating t => [t] -> [t] -> t
crossEnt ps qs = 
  if (null ps) then 0
  else ((-1)*(head ps)*(logBase 2 (head qs))
        + crossEnt (tail ps) (tail qs))

\end{code}