a: (".L#" ! 0N 0 1) read0 `:d11.txt;

/ part one
s: (-1 0 1 cross -1 0 1) except enlist 0 0;
c: (til h: count a) cross til w: count first a;
d1: (t: {sum each (w; 1) */: x where (and/) (flip x) within' 0 ,' (h; w) - 1}) each c +/:\: s;
f: {[x; y; z; u]
  if[(0 = count v) or any 0N = v: x y; : 0N];
  b: sum x u y;
  `long $ $[0 = x y; b = 0; b < z]
  };
g: {f[x;; y; z] each til count c};

p1: sum raze (g[; 4; d1]/) raze a;

/ part two
i: {x +/: s * 1 + {first where x} each (a ./:/: x +/:/: (1 _ til w | h) *\:/: s) in 0 1};
d2: {t i x} each c;

p2: sum raze (g[; 5; d2]/) raze a;

show (p1; p2);
