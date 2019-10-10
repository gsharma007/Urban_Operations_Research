param nNodes>=0;					# number of nodes
set NODES:=1..nNodes;					# set of nodes
set ARCS; 						# set of arcs

param nSubt >=0;					# number of subtours 
set SUBT:=1..nSubt;					# set of subtours
param SUBT_C {SUBT,ARCS} binary;			# matrix of coefficients for subtour constraints
		

param t {ARCS};						# time to traverse arc a in ARCS
param i {ARCS};						# tail node of arc a : if a=(k,m) then i(a)=k
param j {ARCS};						# head node of arc a : if a=(k,m) then j(a)=m

var x{a in ARCS} binary; 				# binary variable: 1 if arc 'a' is used in the tour; 0 otherwise

minimize Cost: sum{a in ARCS} t[a]*x[a];
subject to balance1 {n in NODES}: sum{a in ARCS: j[a]=n}x[a]=1;
subject to balance2 {n in NODES}: sum{a in ARCS: i[a]=n}x[a]=1;
subject to subtour {s in SUBT}: sum{a in ARCS: SUBT_C[s,a]=1}x[a] <= sum{a in ARCS: SUBT_C[s,a]=1}SUBT_C[s,a]-1;

