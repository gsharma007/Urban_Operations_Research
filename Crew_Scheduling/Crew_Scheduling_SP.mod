set Nodes;
set ARCS;

param c{ARCS};
param i{ARCS};
param j{ARCS};
param b{Nodes};
param lb{ARCS};
param ub{ARCS};

var x{a in ARCS};

minimize Cost: sum {a in ARCS} c[a]*x[a];
subject to balance {n in Nodes}: sum{a in ARCS: i[a] = n} x[a] - sum{a in ARCS: j[a] =n}x[a] = b[n];
subject to lower_b {a in ARCS}: x[a] >= lb[a];
subject to upper_b {a in ARCS}: x[a] <= ub[a];  
