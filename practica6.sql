create database empresa;
use empresa;

#punto 1
desc employee;
select EMPNO,LASTNAME,BIRTHDATE,SALARY from employee where salary>30000 order by salary desc;
#punto 2
select employee.firstnme, employee.lastname,department.deptno from employee,department where employee.workdept=department.deptno order by department.deptno desc;
#punto 3
select edlevel from employee order by edlevel desc;
#punto 4
desc project;
select employee.empno,project.projname from employee,project where employee.empno=project.respemp and employee.empno<=100 order by empno desc;
#punto 5
select lastname,salary,bonus from employee where sex='M';
#punto 6
select lastname,salary,comm from employee where salary<50000 and hiredate>1979;
#punto 7
select lastname,salary,bonus,comm from employee where salary>22000 and bonus=400 and comm<1900 order by lastname desc; 
#punto 8 
desc empprojact;
select empno,actno,emstdate,emendate from empprojact where empprojact.empno like 'AD%' and actno=10 or actno=80 or actno=180 order by actno and empno;
#punto 9 
desc department;
select admrdept,deptno from department order by admrdept desc;
#punto 10 
select empno,lastname,salary,bonus from employee where bonus>=800 and bonus<=1000 order by bonus asc;
#punto 11
select* from employee;
select empno,lastname,salary,workdept from employee where workdept>='A00' and workdept <='C01' order by lastname;
#punto 12
select* from project where projname like '%SUPPORT%' order by projno;
#punto 13
select * from department where deptno like '_1_' order by deptno;