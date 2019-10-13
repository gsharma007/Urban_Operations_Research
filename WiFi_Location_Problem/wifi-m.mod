set L;
param x_0 {i in L};
param y_0 {i in L};

var x;
var y;
var u {i in L} >= 0;
var v {i in L} >= 0;

subject to absX_L {i in L}: x_0[i]-x >= -u[i];
subject to absX_U {i in L}: x_0[i]-x <= u[i];
subject to absY_L {i in L}: y_0[i]-y <= v[i];
subject to absY_U {i in L}: y_0[i]-y >= -v[i];

minimize totalDist: sum{i in L} (u[i]+v[i]);

