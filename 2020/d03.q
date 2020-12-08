a: read0 `:d03.txt;

/ part one
p1: sum "#" = a ./: flip (b; (3 * b: til count a) mod count first a);

/ part two
f: {sum "#" = a ./: flip (y * b; (x * b: til count a) mod count first a)};
p2: prd `long $ f .' 1 3 5 7 1 ,' 1 1 1 1 2;

show (p1; p2);
