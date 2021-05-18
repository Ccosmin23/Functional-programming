(*
  ML - ex2 synopsis
*)


fun prodl [] = 1
  | prodl [n]  = n
  | prodl (n::ns) = n * prodl ns;
  


