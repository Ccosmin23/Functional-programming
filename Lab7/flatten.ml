(*in ML comments are marked like this*)
(*author: Cosan Cosmin*)
(*date: 11.11.2020*)

fun flatten [] = []
  | flatten (x::xs) = x @ flatten xs;

  