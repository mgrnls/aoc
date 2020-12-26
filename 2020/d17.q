a: read0 `:test.txt;
a: read0 `:d17.txt;

/ part one
ix: ((cross/) 3 # enlist -1 0 1) except enlist 0 0 0;
fi: (raze (til count a) {x ,/: y}' where each "#" = a) ,' 0;
f: {[x]
  tc: distinct raze x +/:\: ix , enlist 0 0 0;
  tc where (sum each (tc +/:\: ix) in\: x) in' (3; 2 3) tc in\: x
  };

p1: count 6 f/ fi;

/ part two
ix: ((cross/) 4 # enlist -1 0 1) except enlist 0 0 0 0;
fi: (raze (til count a) {x ,/: y}' where each "#" = a) ,\: 0 0;
f: {[x]
  tc: distinct raze x +/:\: ix , enlist 0 0 0 0;
  tc where (sum each (tc +/:\: ix) in\: x) in' (3; 2 3) tc in\: x
  };

p2: count 6 f/ fi;

show (p1; p2);
