set L;
param x_0 {i in L};
param y_0 {i in L};
param r;

var x;
var y;
var x_s {i in L};
var y_s {i in L};

minimize totalDist: sum{i in L} ((x_0[i]-x_s[i])^2+(y_0[i]-y_s[i])^2)^0.5;
subject to serviceArea {i in L}: ((x_s[i]-x)^2+(y_s[i]-y)^2)^0.5 <= r;
