

\begin{code}

    myinit :: [a] -> [a]

    myinit [] = error("lista vida");
    myinit (x:[]) = [x]
    myinit (x:xs:[]) = [x]
    myinit (x:xs) = x : myinit xs

\end{code}