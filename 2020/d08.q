a: read0 `:d08.txt;

/ part one
c: (` $ b[; 0]) ,' value each (b: " " vs' a)[; 1] except\: "+";
f: {[x]
  i: x 0; a: x 1; l: 2 _ x;
  j: `jmp = first c i;
  n: `nop = first c i;
  (i + $[j; last c i; 1]; a + (not n) * (last c i) * not j) , l , i
  };
p1: ({not (first x) in 2 _ x} f/ 0 0) 1;

/ part two
d: (@[c[; 0];; `nop`jmp`acc ! `jmp`nop`acc] each where c[; 0] in `jmp`nop) (,')\: c[; 1];
m: {`c set x; {(not (first x) in 2 _ x) and (count c) <> first x} f/ 0 0} each d;
p2: (first m where (count c) = first each m) 1;

show (p1; p2);
