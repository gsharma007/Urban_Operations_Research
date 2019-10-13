set L;
param x1 {i in L};
param y1 {i in L};

var x;
var y;

minimize totalDist: sum{i in L} (abs(x1[i]-x)+abs(y1[i]-y));