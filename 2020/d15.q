a: value first read0 `:d15.txt;

/ part one
f: {x , $[(l: last x) in -1 _ x; (-1 + count x) - last where (-1 _ x) = l; 0]};
p1: last (2020 - count a) f/ a;

/ part two
d: (`u # b) ! 1 + til count b: -1 _ a;
f: {v: $[(x `i) in key d; (x `t) - d[x `i]; 0]; d[x `i]: x `t; x[`t] +: 1; x[`i]: v; x}; 
p2: @[; `i] (30000000 - count a) f/ `t`i ! (count a; last a)

show (p1; p2);
