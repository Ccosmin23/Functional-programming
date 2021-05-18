\begin{code}

li = 1 : 4*el : 2*el : 5*el : 3*el : li where
  el = head (tail (tail (tail (tail (tail li)))))

foo = take 9 (map espagnol (tail li)) where
  espagnol  e | e == 1    = "uno"
              | e == 2    = "dos"
              | e == 3    = "tres"
              | otherwise = "chacha"

\end{code}