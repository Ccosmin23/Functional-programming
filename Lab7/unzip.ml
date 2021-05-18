fun unzip [] = ([], [])
  | unzip ((x,y)::zs) =
      let val (xs, ys) = unzip zs
      in (x::xs, y::ys)
  end;