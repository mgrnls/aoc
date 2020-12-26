a: read0 `:d17.txt;

/ part one
ix: ((cross/) 3 # enlist -1 0 1) except enlist 0 0 0;
fi: (raze (til count a) {x ,/: y}' where each "#" = a) ,' 0;
f: {[x; y]
  tc: distinct raze (nx: `u # x) +/:\: ix , enlist y # 0;
  tc where (sum each (tc +/:\: ix) in\: nx) in' (3; 2 3) tc in\: nx
  };

p1: count 6 f[ ; 3]/ fi;

/ part two
ix: ((cross/) 4 # enlist -1 0 1) except enlist 0 0 0 0;
fi: (raze (til count a) {x ,/: y}' where each "#" = a) ,\: 0 0;

p2: count 6 f[ ; 4]/ fi;

show (p1; p2);
