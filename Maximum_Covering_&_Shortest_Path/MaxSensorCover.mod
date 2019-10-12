param K;
param N;
param B;
set COMMOD := 1..K;
set NODES := 1..N;

param cars{COMMOD};
param u{NODES,COMMOD} binary;

var y{COMMOD} binary;
var x{NODES} binary;

maximize coverage: sum{k in COMMOD} y[k] * cars[k];
subject to sensor_budget: sum{n in NODES} x[n] = B;
subject to Flow_Coverage {k in COMMOD}: y[k] <= sum{n in NODES} x[n] * u[n,k];
