a: read0 `:d06.txt;

/ part one
p1: count raze distinct each raze each l: (0 , where 0 = count each a) _ a;

/ part two
p2: sum count each (inter/) each {x where not x ~\: ""} each l;

show (p1; p2);
