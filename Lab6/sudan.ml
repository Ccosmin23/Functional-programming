
fun sudan n x y = if n=0 then (x+y)
   else if y=0 then x
   else sudan (n - 1) (sudan n x (y - 1)) (y + (sudan n x (y - 1)));
