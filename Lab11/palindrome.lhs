\begin{code}
palindrome xs = xs == reverse xs

l1 = [1,2,3,4,5]
l2 = [1,2,3,4,5,4,3,2,1]
liminf = 10000000
lim=10
l3 = [1..lim] ++ [lim,lim-1..1]
l4 = [1..lim+2]
l666 = l3 ++ [1,2,3] ++ reverse l3
\end{code}