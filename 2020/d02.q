a: read0 `:d02.txt;

/ part one
p1: sum (sum each x[; 2] = x[; 1; 0]) within' (value') each "-" vs' (x: " " vs' a)[; 0];

/ part two
p2: sum 1 = sum each x[; 1; 0] = x[; 2] @' -1 + (value') each "-" vs' (x: " " vs' a)[; 0];  

show (p1; p2);
