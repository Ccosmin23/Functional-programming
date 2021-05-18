{-
    ML : ex2 lab11 tasks
-}


fun qs [] ord = []
| qs (x::xs) ord =
    let
       fun my_split _ [] s b _ = (s,b)
        | my_split x (y::ys) s b ord =
            if (ord y x) then my_split x ys (y::s) b ord
            else my_split x ys s (y::b) ord
        val (s,b) = my_split x xs [] [] ord
    in
        qs s ord @ [x] @ qs b ord
    end;

fun ltstr x y = length (explode x) < length (explode y) orelse
                length (explode x) = length (explode y) andalso
                (x:string) < (y:string);

val countries = ["Russia", "Norway", "Germany", "Romania",
                "France", "South Korea", "Angola", "Hungary"];