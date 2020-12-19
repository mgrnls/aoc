a: value each read0 `:d09.txt;

/ part one
p1: a {any (b <> d div 2) and b in c: (d: a x) - b: a x + neg 1 + til 25} {x + 1}/ 25;

/ part two
f: {p1 = sum each a (til x) +/: til (neg x - 1) + count a};
i: {not any where f x} {x + 1}/ 2;
p2: sum (min; max) @\: {first a (til x) +/: where f x} i;

show (p1; p2);
