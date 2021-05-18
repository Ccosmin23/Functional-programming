{-
	Haskell ex1 solutions lab7
-}

\begin{code}

	safetail xs =
		if (null xs) then []
		else tail xs

	safetail1 xs | (null xs) = []
				| otherwise = tail xs

	safetail2 ([]) = []
	safetail2 (_:xs) = xs

\end{code}
