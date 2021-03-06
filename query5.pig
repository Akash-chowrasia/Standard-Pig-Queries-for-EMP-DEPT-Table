-- Test Case Query -> List the employee names and his average salary department wise ?

a = load "/emp.txt" using PigStorage(",");
f = group a by $7;
g = foreach f generate group,$1,AVG(a.$5);
dump g;

-- OUTPUT:
-- (10,{(7782,CLARK,MANAGER,7839,9-JUN-1981,2450,,10),(7839,KING,PRESIDENT,\000,17-NOV-1981,5000,,10)},3725.0)
-- (20,{(7369,SMITH,CLERK,7902,17-DEC-1980,800,,20),(7934,MILLER,CLERK,7782,23-JAN-1982,1300,100,20),(7902,FORD,ANALYST,7566,3-DEC-1981,3000,200,20),(7876,ADAMS,CLERK,7788,12-JAN-1983,1100,300,20),(7788,SCOTT,ANALYST,7566,09-DEC-1982,3000,,20),(7566,JONES,MANAGER,7839,2-APR-1981,2975,,20)},2029.1666666666667)
-- (30,{(7900,JAMES,CLERK,7698,3-DEC-1981,950,100,30),(7698,BLAKE,MANAGER,7839,1-MAY-1981,2850,,30),(7654,MARTIN,SALESMAN,7698,28-SEP-1981,1250,1400,30),(7521,WARD,SALESMAN,7698,22-FEB-1981,1250,500,30),(7844,TURNER,SALESMAN,7698,8-SEP-1981,1500,,30),(7499,ALLEN,SALESMAN,7698,20-FEB-1981,1600,300,30)},1566.6666666666667)
-- (50,{(7532,AKASH,CLERK,7782,15-MAY-2015,5000,,50)},5000.0)