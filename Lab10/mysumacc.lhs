
\begin{code}

mysumacc a [] = a
mysumacc a (x:xs) = mysumacc (a+x) xs

\end{code}