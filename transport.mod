set orig;
set dest;

param supply{orig}>=0;
param demand{dest}>=0;

#check: sum{i in orig}supply[i]=sum{j in dest}demand[j];
#Not applicable in this problem

param dist{orig,dest}>=0; #distance between the origin and destination

var trans{orig,dest} integer >=0;

maximize Cost:sum{i in orig,j in dest}0.09*dist[i,j]*trans[i,j];

subject to Supply{i in orig}:sum{j in dest}trans[i,j]<=supply[i];
subject to Demand{j in dest}:sum{i in orig}trans[i,j]=demand[j];


