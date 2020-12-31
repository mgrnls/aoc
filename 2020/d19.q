a: read0 `:d19.txt;
u: read0 `:d19u.txt;

/ part one
rs: (0 , 1 + where a ~\: "") _ a;
d: (value each b[ ; 0]) ! (b: ": " vs/: first rs)[ ; 1];
g: {raze each (cross/) f each x};
f: {$["\"" in v: d x; value v; raze g each "J" $ " " vs/: " | " vs v]};

p1: `long $ sum (last rs) in f 0;

/ part two
/ cheated a bit here, won't work for other peoples input
f31: f 31;
f42: f 42;
h: {[x]
  c: (count x) - count n: {(-8 # x) in f31} {-8 _ x}/ x;
  (c <> 0) and ((count k) > c div 8) and all (k: 8 cut n) in\: f42
  };

p2: `long $ sum h each last rs;

show (p1; p2);
