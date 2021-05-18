(*in ML comments are marked like this*)
(*author: Cosan Cosmin*)
(*date: 11.11.2020*)

fun hd(x::_) = x;
fun t1 (_::xs) = xs;

fun prodl ns =
  if null ns then 1
  else hd ns * prodl (tl ns);


