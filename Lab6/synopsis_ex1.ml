(*
  ML - ex1 from synopsis
*)


fun prodl ns =
  if (length ns = 1 ) then hd ns
  else if (length ns > 1) then (hd ns) * prodl (tl ns)
  else 1;



