a: read0 `:d05.txt;

/ part one
f: {(2 0N # x) y};
l: {first (8 * (til 128) f/ "B" = 7 # x) + (til 8) f/ "R" = -3 # x} each a;
p1: max l;

/ part two
p2: first ((first r) + 1 + til last deltas r: (min; max) @\: l) except l;

show (p1; p2);
