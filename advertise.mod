#AMPL book Exercises 1-1





var x1 >=0; #TV time 


var x2 integer >=0; #magazine pages, an integer 


var x3 >=0; #radio time 


maximize Customer:1.8*x1+x2+0.25*x3;


subject to Budget:2*x1+x2+0.2*x3<=100;


subject to Resource: x1+3*x2+(1/7)*x3<=100;


subject to Constraint1:x1>=10;


subject to Constraint3:x3<=120;





#save as "advertise.mod"


#type commands in ampl:prompt 





reset;


option solver cplex; #change the default solver minos to cplex to address the integrality constraint


solve;

display x1,x2,x3;
