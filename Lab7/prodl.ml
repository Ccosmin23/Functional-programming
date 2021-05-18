fun prodl [] = 1
  | prodl (n::ns) = n * prodl ns;
  