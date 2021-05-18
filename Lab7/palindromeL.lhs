{-
	haskell - ex2 solutions lab7 
-}


\begin{code}

	myinit :: [a] -> [a]
	myinit (y:[]) = []
	myinit (x:y:ys) = x : myinit (y:ys)

	palindrome [] = True
	palindrome [x] = True
	palindrome (x:xs) = x == (last xs) && palindrome (myinit xs)

	palindromeL xs = palindrome (elimSpaces (app_all xs)) 

	app_all [] = []
	app_all (x:xs) = x ++ app_all xs

	elimSpaces [] = []
	elimSpaces (x:xs) | x == ' ' = elimSpaces xs
					  | otherwise = x : elimSpaces xs

	l1 = ["first", "ladies", "rule", "this", "state", "and",
		  "state", "this", "rule", "ladies", "first"]
	l2 = ["a man", "a plan", "a canal", "panama"]



\end{code}



