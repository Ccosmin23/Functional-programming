{-
  haskell : ex1 synopsis lab 8
-}


\begin{code}

module Main where
  factori n = fact_acc n 1
    where
      fact_acc 0 a = a
      fact_acc n a = fact_acc (n-1) $! (n*a)
  a = 1
  b = 9
  c = 11
  d = 3
  n1 = (factori (a+b)) `div` (factori a)
  n2 = (factori (a+c)) `div` (factori c)
  n3 = (factori (b+d)) `div` (factori b)
  n4 = (factori (c+d)) `div` (factori d)
  numer = n1 * n2 * n3 * n4
  denom = factori (a+b+c+d)
  p = (fromIntegral numer) / (fromIntegral denom)
  -- program entry point, to be discussed later
  main = do
          print p
\end{code}