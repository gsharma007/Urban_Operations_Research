set L;
param x_0 {i in L};
param y_0 {i in L};

var x;
var y;
var S1 {i in L} >= 0;
var S2 {i in L} >= 0;
var B1 {i in L} >= 0;
var B2 {i in L} >= 0;

subject to C1 {i in L}: x_0[i]-x+S1[i]-S2[i] = 0;
subject to C2 {i in L}: y_0[i]-y+B1[i]-B2[i] = 0;

minimize totalDist: sum{i in L} (S1[i]+S2[i]+B1[i]+B2[i]);

