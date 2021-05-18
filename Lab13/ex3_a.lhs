\begin{code}

combinations n = let
                   genComb []     = [ [] ]
                   genComb (x:xs) = (genComb xs) ++ addHead x (genComb xs) where
                     addHead x xss = map (x:) xss
                 in
                   genComb [1..n]



\end{code}