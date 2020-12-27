a: value each read0 `:d01.txt;

/ part one
p1: prd a where (2020 - a) in a;

/ part two
p2: prd a where any each ((2020 - a) -/: a) in\: a;

show (p1; p2);
