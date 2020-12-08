a: read0 `:d04.txt;

/ part one
f: {all `byr`iyr`eyr`hgt`hcl`ecl`pid in (` $ ":" vs' " " vs x)[; 0]};
p1: sum b: f each trim " " sv' (0 , where 0 = count each a) _ a;

/ part two
g: {`cid _ (!) . flip ` $ ":" vs' " " vs x};
d: g each c: trim " " sv' (0 , where 0 = count each a) _ a;

fbyr: {((value s) within 1920 2002) and 4 = count s: string x};
fiyr: {((value s) within 2010 2020) and 4 = count s: string x};
feyr: {((value s) within 2020 2030) and 4 = count s: string x};
fhgt: {$[b: count r: (`cm`in ! (150 193; 59 76)) ` $ -2 # s: string x;
         `boolean $ b and (value -2 _ s) within r;
         0b]};
fhcl: {(all (1 _ x) in 16 # lower .Q.nA) and "#" = first x: string x};
fecl: {x in `amb`blu`brn`gry`grn`hzl`oth};
fpid: {(all s in .Q.n) and 9 = count s: string x};

fd: `byr`iyr`eyr`hgt`hcl`ecl`pid ! (fbyr; fiyr; feyr; fhgt; fhcl; fecl; fpid);
p2: sum {all (fd key x) @' value x} each d where b;

show (p1; p2);
