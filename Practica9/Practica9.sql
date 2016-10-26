drop database empresa;
create database empresa;
use empresa;

create view vista1 as
select employee.firstnme, employee.lastname, department.deptname from department inner join employee on employee.workdept=department.deptno;
select * from vista1;
drop view vista1;

create view vista2 as
select firstnme, salary, deptname from employee inner join department on employee.empno=department.mgrno;
select * from vista2;
drop view vista2;

select * from employee;

create view vista3 as
select projname,firstnme from employee inner join empprojact on empprojact.empno=employee.empno inner join project 
on project.projno=empprojact.projno group by(employee.empno);
drop view vista3;
select * from vista3;


create view vista4 as
select act.actno from act inner join empprojact on act.actno=empprojact.actno inner join employee on employee.empno=empprojact.empno group by (employee.empno);
drop view vista4;
select * from vista4;

create view vista5 as
select projname,firstnme,job from employee inner join empprojact on employee.empno=empprojact.empno inner join project on project.projno=empprojact.projno
group by(employee.empno);
drop view vista5;
select * from vista5;

insert into department values ('E10','ESCOM',null,'B01',null);
insert into employee values('123456','Luis','1','Mario','E10','4040','2016-10-20','MANAGER',18,'M','1997-07-15',8000.50,1000,4220);
update department set mgrno='123456' where deptno='E10';
insert into project values('IS2016','ESCOM1','E10','123456',6.5,'2002-01-01','2003-02-01',null);
insert into empprojact values ('123456','IS2016',10,1,'2002-01-01','2002-07-01');