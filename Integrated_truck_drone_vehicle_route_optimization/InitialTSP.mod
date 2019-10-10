set ARCS;
set NODES:= 1..6;
set B:= 2..6;

param c {ARCS};
param i {ARCS};
param j {ARCS};

var x {a in ARCS} binary;
var u {a in NODES} integer;

minimize Total_travel_time: sum{a in ARCS} c[a] * x[a];

subject to Incoming_Arcs {n in NODES}: sum {a in ARCS: j[a] = n}x[a] = 1;
subject to Outgoinging_Arcs {n in NODES}: sum {a in ARCS: i[a] = n}x[a] = 1;
subject to mtz{a in {7,8,9,10,12,1	3,14,15,17,18,19,20,22,23,24,25,27,28,29,30}}: u[i[a]] - u[j[a]] + (x[a] * 6) <= 5;