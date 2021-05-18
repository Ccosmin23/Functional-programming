(*
  ML - ex3 synopsis
*)


fun prodl ns = case ns of
    [k] => k
  | (k :: ks) => k*prodl ks
  | _ => 1;
  

