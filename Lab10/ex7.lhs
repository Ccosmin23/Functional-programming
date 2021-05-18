
\begin{code}

inters xs ys = filter (combC member ys) xs

combC f x y = f y x

member e [] = False
member e (x:xs) | e==x = True 
				| otherwise = member e xs
\end{code}