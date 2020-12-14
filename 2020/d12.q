a: read0 `:d12.txt;
/a: read0 `:test.txt

/ part one
d: `p`d ! (0 0; "E");
c: "NESWLR" ! (1 0; 0 1; -1 0; 0 -1; 0 0; 0 0);
p: "NESW";
b: "LR" ! -1 1;
f: {[x; y]
  np: (x `p) + (v: value 1 _ y) * c $["F" = y 0; x `d; y 0];
  nd: $[(y 0) in "LR"; rotate[(v div 90) * ("LR" ! -1 1) y 0; p] p ? x `d; x `d];
  `p`d ! (np; nd)
  }

p1: sum abs (d f/ a) `p;

/ part two
d: `p`w ! (0 0; 1 10);

g: {[x; y]
  if["F" = y 0; x[`p]: (x `p) + (value 1 _ y) * x `w; : x];
  nw: (x `w) + (v: value 1 _ y) * c y 0;
  nd: $[(y 0) in "LR"; ($["R" = y 0; v; 360 - v] div 90) {-1 1 * reverse x}/ (x `w); nw];
  `w`p ! (nd; x `p)
  }

p2: sum abs (d g/ a) `p;

show (p1; p2);
