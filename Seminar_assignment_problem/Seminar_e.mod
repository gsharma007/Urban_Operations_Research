set St;
set Se;
set Se1 = 1..3;
set Se2 = 4..6;
param C {j in Se}; #capacities for each seminar in j
param R {i in St, j in Se}; #cubed ranks,costs of attending the seminar

var X{i in St, j in Se} >= 0;
var Y{j in Se} binary; #binary variable, value is 1 if the seminar is offered o/w 0

subject to seminar{i in St}: sum {j in Se} X[i,j] = 1;
subject to capacity{j in Se}: sum {i in St} X[i,j] <= C[j];
subject to application: sum{j in Se1} Y[j] = 2; #assigning maximum 2 application seminars
subject to methodological: sum{j in Se2} Y[j] = 2; #assigning maximum 2 methodological seminars
subject to XY{i in St, j in Se}: X[i,j] <= Y[j]; #constraint connecting X and Y

minimize totalcost: sum{i in St, j in Se} (X[i,j]*R[i,j]);
