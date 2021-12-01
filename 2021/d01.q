a: "J" $ read0 `:d01.txt;

/ part one
p1: sum 0 < 1 _ deltas a;

/ part two
p2: sum 0 < 1 _ deltas 2 _ 3 msum a;

show (p1; p2);
