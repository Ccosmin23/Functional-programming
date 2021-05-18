{-
	haskell :  ex4 lab8 solutions

		-- test data
t1 = list2tree [2,1,3] [1,2,3]
t2 = list2tree [4,2,1,3,5,6] [1,2,3,4,5,6]
t3 = list2tree [30,20,25,40,35] [20,25,30,35,40]
t4 = list2tree [30,20,25,22,27,40,35] [20,22,25,27,30,35,40]
t5 = list2tree [30,20,25,22,27,40,35,37] [20,22,25,27,30,35,37,40]
t6 = list2tree [40,35,37] [35,37,40]
t7 = list2tree [35,37] [35,37]
-}


\begin{code}
data Mytree t = Empty | Node t (Mytree t) (Mytree t)

instance (Show t) => Show (Mytree t) where
  show = pTree 0 where 
           pInd i = [ ' ' | k <- [1..i] ]
           pTree i Empty        = pInd i ++ "." ++ "\n"
           pTree i (Node v l r) = pInd i ++ 
                                  (show v) ++ "\n" ++
                                  (pTree (i+3) l) ++
                                  (pTree (i+3) r)

upTo _ []                 = [] 
upTo e (x:xs) | e == x    = [] 
              | otherwise = x:(upTo e xs)

startFrom _ []                 = [] 
startFrom e (x:xs) | e == x    = xs 
                   | otherwise = startFrom e xs

list2tree [] []     = Empty 
list2tree [e] [_]   = Node e Empty Empty 
list2tree (p:ps) is 
  | not (null ll) && not (null lr) = Node p
                                          (list2tree ((upTo (last ll) ps)
                                                       ++ [(last ll)])
                                                     (upTo p is))
                                          (list2tree (startFrom (last ll) ps) lr)
  | not (null lr)                  = Node p Empty (list2tree ps lr)
  | otherwise                      = Node p (list2tree ps ll) Empty
                                       where
                                         ll = upTo p is
                                         lr = startFrom p is

\end{code}