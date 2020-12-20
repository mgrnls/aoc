a: read0 `:d14.txt;

/ part one
d: `mask`mem ! (36 # "X"; (`long $ ()) ! `long $ ())
f: {[x; y]
  if["a" = y 1; x[`mask]: last " = " vs y; : x];
  xs: " = " vs y;
  p: value n where (n: first xs) in .Q.n;
  v: value last xs;
  c: `boolean $ value each b w: where "X" <> b: x `mask;
  k: 28 _ 0b vs v;
  k[w]: c;
  x[`mem; p]: 2 sv k;
  x
  };

p1: sum value (d f/ a) `mem;

/ part two
f: {[x; y]
  if["a" = y 1; x[`mask]: last " = " vs y; : x];
  xs: " = " vs y;
  p: value n where (n: first xs) in .Q.n;
  v: value last xs;
  / same up to here.
  k: (x `mask) or raze string 28 _ 0b vs p;
  w: where "X" = b: x `mask;
  l: (cross/) (count w) # enlist "01";
  ps: 2 sv/: `boolean $ (value') each {x[y]: z; x}[k; w; ] each l;
  x[`mem; ps]: v;
  x
  };

p2: sum value (d f/ a) `mem;

show (p1; p2);
