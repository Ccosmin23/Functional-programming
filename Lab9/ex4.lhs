\begin{code}

--se poate folosi varianta urmatoare, 
rests []     = [[]]
rests (x:xs) = (x:xs):rests xs

--sau 
rests2 l = take (1 + length l) $ iterate tail l

\end{code}