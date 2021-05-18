\begin{code}

fm :: Monad m => (a -> m Bool) -> [a] -> m [a]
fm _ []     = return []
fm p (x:xs) = do b <- p x
                 ys <- fm p xs
                 return (if b then (x:ys) else ys)


\end{code}