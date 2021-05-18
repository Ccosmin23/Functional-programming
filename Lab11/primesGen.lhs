


\begin{code}
primesGen = 
   let
      primes              = 2:primesOdd 3
      primesOdd n 
         | isPrime n primes == True 
                     = n:primesOdd (n+2)
         | otherwise = primesOdd (n+2) 
      isPrime n (x:xs)
         | n < x * x      = True
         | n `mod` x == 0 = False
         | otherwise      = isPrime n xs  
   in primes  			       
\end{code}