a: "1" = read0 `:test.txt;
a: "1" = read0 `:d03.txt;
 
/ part one
b: (sum a) > (count a) div 2;
p1: prd 2 sv' (b; not b);

/ part two
f: {`n`l`t ! (n + 1; ; t) l where $[t: x `t; ::; not] k = `long $ avg k: (flip l: x `l) n: x `n};
w: {1 < count x `l};
c: w f/ `n`l`t ! (0; a; 0b);
d: w f/ `n`l`t ! (0; a; 1b);
p2: prd 2 sv' first each (c; d) @\: `l

show (p1; p2)
