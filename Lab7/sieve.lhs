

\begin{code}
sieve(p:ns) = p:sieve [n | n <- ns, n `mod` p > 0]
primes = sieve [2..]
\end{code}