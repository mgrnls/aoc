a: value each read0 `:d01.txt;

/ part one
p1: first prd each c where 2020 = sum each c: a cross a;

/ part two
p2: first prd each c where 2020 = sum each c: a cross a cross a;

show each (p1; p2);
