a: read0 `:d13.txt;

/ part one
e: value first a;
n: value each b where all each "x" <> b: "," vs last a;

p1: (n w) * abs e - l w: first where (min l) = l: n * 1 + e div n;

/ part two
f: {(last x; a; m - n * a: (m: first x) div n: last x)};
eea: {[x; y]
  k: 1 ,' neg -1 _ 1 _ (reverse {0 < last x} f\ t: (x; 1; y))[; 1];
  (first k) {(0; first x) + y * last x}/ 1 _ k
  };
m: (neg w) mod n: value each s w: where not (enlist "x") ~/: s: "," vs last a;
N: (prd n) div n;

p2: (sum prd each m ,' N ,' (eea .' N ,' n)[; 0]) mod prd n;

show (p1; p2);
