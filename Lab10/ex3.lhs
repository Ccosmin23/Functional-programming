\begin{code}
f :: [Integer] -> Integer
f l = foldr (\ y x -> x+2*y)  0 (reverse l)
\end{code}