{-
	haskell : palindrome solution 2 lab 7 
-}


\begin{code}

	palindrome xs = xs == reverse xs
	
	palindromeL xs = palindrome (app_all_but_spaces xs)
	
	app_all_but_spaces xss = [x | xs <- xss, x <- xs, x /= ' ']

	l2 = ["a man", "a plan", "a canal", "panama"]

\end{code}
