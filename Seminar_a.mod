set St;
set Se;
param C {j in Se}; #capacities for each seminar in j
param R {i in St, j in Se}; #cubed ranks,costs of attending the seminar

var X{i in St, j in Se} >= 0;

subject to seminar{i in St}: sum {j in Se} X[i,j] = 1;
subject to capacity{j in Se}: sum {i in St} X[i,j] <= C[j];

minimize totalcost: sum{i in St, j in Se} (X[i,j]*R[i,j]);