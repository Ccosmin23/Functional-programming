{-
	haskell : ex2 lab8 synopsis
-}

\begin{code}

import Data.Char

qs [] ord     = []
qs (x:xs) ord = qs s ord ++ [x] ++ qs b ord
                     where
                        (s,b) = my_split x xs [] [] ord
                        my_split _ [] s b _ = (s,b)
                        my_split x (y:ys) s b ord
                            | ord y x   = my_split x ys (y:s) b ord
                            | otherwise = my_split x ys s (y:b) ord

lt1 x y = x<=y
lt2 x y = x>=y
ltstr x y = length x < length y || length x == length y && x<y

countries = ["Russia", "Norway", "Germany",
             "Romania", "France", "South Korea",
             "Angola", "Hungary", "Antigua and Barbuda"]


\end{code}





