a: read0 `:d16.txt;

/ part one
s: (0 , where a ~\: "") _ a;
ts: value each 2 _ last s;
ns: (value') each " or " vs/: last each ": " vs/: ssr[ ; "-"; " "] each rs: first s;
c: where count each b: where each not {2 any/ x within/:/: ns} each ts;
p1: sum ts ./: c ,' b c;

/ part two
ts: ts (til count ts) except c;
t: value s[1; 2]
k: {where all each x {(x within 2 # y) or x within 2 _ y}\:/: raze each ns} each flip ts;
d: (`long $ ()) ! `long $ ();
({v: x except\: c: first x r: first where 1 = count each x; d[c]: r; v}/) k;
p2: prd t d where (":" vs' rs)[; 0] like "departure*";

show (p1; p2);
