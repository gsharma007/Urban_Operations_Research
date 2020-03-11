#var x1 >=0;
#var x2 >=0;
#var x3 >=0;
#var x4 >=0;
#var x5 >=0;
#var x6 >=0;
#var x7 >=0;

var x1 integer;
var x2 integer;
var x3 integer;
var x4 integer;
var x5 integer;
var x6 integer;
var x7 integer;

minimize Cost: 30*x1+18*x2+21*x3+38*x4+20*x5+22*x6+9*x7;

subject to hour1: x1+x2 >= 1;
subject to hour2: x1+x2 >= 1;
subject to hour3: x1 >= 1;
subject to hour4: x1+x3+x4 >= 1;
subject to hour5: x3+x4+x6 >= 1;
subject to hour6: x3+x4+x5+x6 >= 1;
subject to hour7: x4+x5+x6 >= 1;
subject to hour8: x4+x5+x7 >= 2;
