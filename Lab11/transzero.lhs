

\begin{code}
trans2zero [] = [] 
trans2zero xs = 
   let (vmin,list)    = onePass xs
       onePass [y]    = (y,[y - vmin])
       onePass (y:ys) = (if y<=z then y else z,
                        (y-vmin):zs)
                          where
                            (z,zs) = onePass ys
   in list    			       
\end{code}