set L;
param x1 {i in L};
param y1 {i in L};

var x;
var y;

minimize totalDist: sum{i in L} ((x1[i]-x)^2+(y1[i]-y)^2)^0.5;


