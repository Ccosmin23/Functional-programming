{-
	Haskell : ex4 lab11 synopsis 
-}

\begin{code}

numbersFrom n = n:numbersFrom (n+1)

multlist [] _          = []
multlist _ []          = []
multlist (x:xs) (y:ys) = (x*y):(multlist xs ys)

allFactorials = 1:(zipWith (*) allFactorials [1..])
allfactorials = 1:1:(multlist (numbersFrom 2) (tail allfactorials))

\end{code}
