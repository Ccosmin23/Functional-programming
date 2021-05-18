\begin{code}
data Optree = Operand Integer |
              Uniop String Optree |
              Binop String Optree Optree

prettyPrintTree = printTree 0

printTree :: Int -> Optree -> IO ()
printTree n (Operand i) = do
                            printIndent n
                            putStr $ show i
                            putStr "_\n"
printTree n (Uniop v s) = do
                            printTree (length v + n + 2) s
                            printIndent n
                            putStr v
                            putStr "\n"
printTree n (Binop v l r) = do
                            printTree (length v + n + 2) l
                            printTree (length v + n + 2) r
                            printIndent n
                            putStr v
                            putStr "\n"
-- print n spaces
printIndent n = putStr [ ' ' | n <- [1..n] ]

t1 = Binop "*"
        (Operand 2)
        (Operand 3)
t2 = Binop "+"
        (Operand 12)
        (Binop "*"
            (Operand 3)
            (Operand 4))
t3 = Uniop "ln"
        (Binop "*"
            (Operand 9)
            (Operand 16))




\end{code}