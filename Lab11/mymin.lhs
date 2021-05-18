
\begin{code}
sorti [] = []
sorti (x:xs) = ins x (sorti xs) where
ins x [] = [x]
ins x (y:ys) | x<y = x:y:ys
	| otherwise = y:ins x ys
mymin xs = head (sorti xs)

\end{code}