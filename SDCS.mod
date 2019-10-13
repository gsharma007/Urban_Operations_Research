set NODES;
set ARCS;

param c {ARCS};
param i {ARCS};
param j {ARCS};
param b {NODES};
param ub {ARCS};
param lb {ARCS};

var x{a in ARCS};

minimize Cost: sum{a in ARCS} c[a]*x[a];
subject to balance {n in NODES}: sum{a in ARCS: i[a]=n}x[a]-sum{a in ARCS: j[a]=n}x[a] = b[n];
subject to flow {a in ARCS}: x[a] <= 1;