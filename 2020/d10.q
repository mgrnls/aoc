a: (3 + max a) , a: value each read0 `:d10.txt;

/ part one
p1: prd (count each group deltas asc a) 1 3;

/ part two
d: (enlist max a) ! enlist 1;
f: {[x]
  if[x in key d; : d x];
  d[x]: s: sum f each t where (t: x + 3 2 1) in a;
  s
  };
p2: f 0;

show (p1; p2);
