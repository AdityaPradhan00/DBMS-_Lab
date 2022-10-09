Create table emp(
    eno int Not Null,
    ename varchar(60) Not Null,
    bdate date,
    title varchar(60),
    salary int Not Null,
    Primary Key(eno)
);
Alter table emp
Add Foreign Key(dno) references dept(dno);

Create table proj(
    pno int Not Null,
    pname varchar(60) Not Null,
    budget int Not Null,
    Primary Key(pno)
);
Alter table proj
Add Foreign Key(dno) references dept(dno);

Create table dept(
    dno varchar(10) Not Null,
    dname varchar(60) Not Null,
    mgreno bigint Not Null,
    Primary Key(dno)
);

Create table workson(
    eno int Not Null references emp(eno),
    pno int Not Null references proj(pno),
    resp varchar(60) Not Null, 
    hours int Not Null,
    Primary Key(eno,pno)
);


Insert into emp(eno, ename, bdate, title, salary, dno)
values(1, 'Aditya Pradhan', '2000-02-18', 'The One Above all', 2147483647, 1);
Insert into emp(eno, ename, bdate, title, salary, dno)
values(2, 'Arc', '1998-12-12', 'SA', 53647, 'D1');
Insert into emp(eno, ename, bdate, title, salary, dno)
values(3, 'Arun', '2003-05-28', 'EE', 23647, 'D1');
Insert into emp(eno, ename, bdate, title, salary, dno)
values(4, 'Nohara Shinosuke', '1965-03-30', 'SA', 35001, 'D4');
Insert into emp(eno, ename, bdate, title, salary, dno)
values(5, 'Ferb Flynn', '2000-02-18', 'EE', 255647, 'D3');
Insert into emp(eno, ename, bdate, title, salary, dno)
values(6, 'Matsubara Miki', '1975-11-1', 'EE', 47483647, 'D2');
Insert into emp(eno, ename, bdate, title, salary, dno)
values(7, 'Earl Johnson', '2001-11-12', 'The employee of the month', 214748347, 'D2');

Insert into proj(pno, pname, budget, dno)
values(1, 'Project1', 9000, 2);
Insert into proj(pno, pname, budget, dno)
values(2, 'Project2', 29292212, 3);
Insert into proj(pno, pname, budget, dno)
values(3, 'Project3', 45343402, 3);
Insert into proj(pno, pname, budget, dno)
values(4, 'Project4', 92922, 2);
Insert into proj(pno, pname, budget, dno)
values(5, 'ProjectX', 49000, 4);

Insert into dept(dno, dname, mgreno)
values(1, '!!@!!', 9999999999);
Insert into dept(dno, dname, mgreno)
values('D1', 'Consulting', 7945867231);
Insert into dept(dno, dname, mgreno)
values('D2', 'DepTwo', 7876004762);
Insert into dept(dno, dname, mgreno)
values('D3', 'Consulting', 7905558431);
Insert into dept(dno, dname, mgreno)
values('D4', 'DepFour', 9832221421);
Insert into dept(dno, dname, mgreno)
values('D5', 'DepFive', 8512016347);


Insert into workson(eno, pno, resp, hours)
values(1, 5, 'Manager', 3);
Insert into workson(eno, pno, resp, hours)
values(2, 3, 'Worker', 7);
Insert into workson(eno, pno, resp, hours)
values(3, 3, 'Manager', 13);
Insert into workson(eno, pno, resp, hours)
values(4, 2, 'Manager', 6);
Insert into workson(eno, pno, resp, hours)
values(5, 5, 'Worker', 14);
