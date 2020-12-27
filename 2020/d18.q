a: read0 `:d18.txt;

/ part one
p1: sum {value reverse @[x; where x in "()"; "()" ! ")("]} each a;

/ part two
e: {prd value each "*" vs x except "()"};
f: {$[any "()" in\: y; g[x; y]; (-1 _ x) , enlist (last x) , y]};
g: {$[")" in y; (-2 _ x) , enlist (last -1 _ x) , string e (last x) , y; x , enlist y]};

p2: sum {e first (enlist "") f/ x} each a;

show (p1; p2);
