set ARCS;

param K;
param N;
set COMMOD := 1..K;
set NODES := 1..N;

param c{ARCS};
param i{ARCS};
param j{ARCS};
param b{NODES, COMMOD};
param lb{ARCS};
param ub{ARCS};

var x{a in ARCS,COMMOD} >= 0 integer;

minimize cost: sum{a in ARCS, k in COMMOD} c[a] * x[a,k];
subject to flowbalance {n in NODES, k in COMMOD}: sum{a in ARCS: i[a] = n}x[a,k] - sum{a in ARCS: j[a] = n}x[a,k] = b[n,k];
subject to lower_bound {a in ARCS}: sum{k in COMMOD} x[a,k] >= lb[a];
subject to upper_bound {a in ARCS}: sum{k in COMMOD} x[a,k] <= ub[a];