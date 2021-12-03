a: " " vs' read0 `:d02.txt;

/ part one
d: ("forward"; "up"; "down") ! (1 0; 0 -1; 0 1);

p1: prd sum ("J" $ a[ ; 1]) * d a[ ; 0];

/ part two
f: {x + (first y) * (last y; y 1; (y 1) * first x)}

p2: prd 1 _ 0 0 0 f/ ("J" $ a[ ; 1]) ,' d a[ ; 0];

show (p1; p2);
