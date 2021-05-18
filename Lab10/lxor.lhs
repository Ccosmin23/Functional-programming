
\begin{code}

xor :: Bool -> Bool -> Bool
xor True True = False
xor True False = True
xor False True = True
xor False False = False

lxor a xs = foldr (xor) a xs

\end{code}