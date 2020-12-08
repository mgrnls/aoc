a: read0 `:d07.txt;

/ part one
b: " contain " vs/: a;
f: {(value each e[; 0]) #' ` $ raze each (e: 4 cut x)[; 1 2]};
g: {$[3 = count x; ` $ (); f x]};
dt: (` $ raze each 2 #' " " vs' b[; 0]) ! g each " " vs' b[; 1];
d: {distinct raze x} each dt;
p1: sum s in' ({x union distinct raze d x}/) each (key d) except s: `shinygold;

/ part two
d: raze each dt;
p2: count raze 1 _ ({raze d x}\) `shinygold;

show (p1; p2);
