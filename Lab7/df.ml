(*in ML comments are marked like this*)
(*author: Cosan Cosmin*)
(*date: 11.11.2020*)

fun member (_, []) = false
  | member (x,y::ys) =
      if x=y then true
      else member (x, ys);

fun reverse [] = []
  | reverse (x::xs) = reverse xs @ [x];

val dag = [("a", "b"), ("a", "c"), ("a", "d"),

          ]







