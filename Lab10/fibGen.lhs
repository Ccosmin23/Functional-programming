\begin{code}

fibonacciGen n = take n f0
  where
    f0 = 0:f1
    f1 = 1:f2
    f2 = addlist f0 f1
    addlist (x:xs) (y:ys) = (x+y):addlist xs ys

\end{code}