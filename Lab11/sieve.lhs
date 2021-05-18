
\begin{code}

sv (p:ns) = p : sv [ n | n <- ns, n `mod` p > 0]
primes = sv [2..]

\end{code}