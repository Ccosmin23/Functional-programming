fun sievePrc p = filterq (fn n => n mod p <> 0);
fun sieve (Cons (p,nf)) =
Cons (p, fn () => sieve (sievePrc p (nf ())));
fun genPrimes n = takeq (n, sieve (startq 2));
