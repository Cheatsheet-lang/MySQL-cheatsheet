# MySQL cheatsheet

I have even uploaded the .sql file which you can download and directly run them in the sql prompt.

### General Commands
To run sql files
```sql
source <filename>.sql;
```

## Data Definition Language (DDL)

#### Create Database
```sql
create database cheatsheet;
```

#### Use Database
```sql
use cheatsheet;
```

#### Show Databases
```sql
show databases;
```

#### Create Table
```sql
create table employee
(
    employee_id int primary key,              -- Setting primary key(1st method)
    first_name varchar(50),
    last_name varchar(50),
    dept_number int,
    age int,
    salary real
);

create table department
(
    dept_number int,
    dept_name varchar(50),
    dept_location varchar(50),
    emp_id int,
    primary key(dept_number)                -- Setting primary key(2nd method)
);
```

#### Show Tables
```sql
show tables;
```

#### Describe Table
```sql
describe employee;
desc employee;
show columns in employee;
```

#### Rename Table
```sql
rename table employee to employee_table;
alter table employee_table rename to employee;
```

#### Renaming Column
```sql
alter table employee change column employee_id emp_id int;
```

#### Add Constraint to Column
```sql
alter table employee change column first_name first_name varchar(50) not null;
```

#### Add Column
```sql
alter table employee add column salary real;
```

#### Drop Column
```sql
alter table employee drop column salary;
```

#### Modify the Datatype of column
```sql
alter table employee modify column salary int;
```

#### Truncate Table
```sql
truncate employee;
```

#### Drop Table
```sql
drop table department;
```

#### Drop Database
```sql
drop database cheatsheet;
```
## Data Manipulation Language (DML)

#### Insertion (Complete)
```sql
insert into employee (employee_id, first_name, last_name, dept_number, age, salary) values (1, "Anurag", "Peddi", 1, 20, 93425.63);

insert into employee values (2, "Anuhya", "Peddi", 2, 20, 83425.63);
```
#### Insertion (Partial)
```sql
insert into employee (employee_id, first_name) values (3, "Vageesh");
```

#### Updating all rows
```sql
update employee set salary = 1.1 * salary;
```

#### Updating a specified row
```sql
update employee set salary = 1.2 * salary where employee_id = 1;
```

#### Delete a specified row
```sql
delete from employee where employee_id = 2;
```

#### Delete all rows
```sql
delete from employee;
```

#### Enabling foreign key checks
```sql
set foreign_key_checks = 1;
```

#### Disabling foreign key checks
```sql
set foreign_key_checks = 0;
```

## Data Query Language (DQL)

#### Display Table
```sql
select * from employee;
```

#### Select only specified columns
```sql
select employee_id, first_name from employee;
```

#### Select only few rows
```sql
select employee_id, first_name from employee where age > 25;
```

## Views

#### Create a view
```sql
create view personal_info as select first_name, last_name, age from employees;
```

#### Displaying view
```sql
select * from personal_info;
```

#### Updating in view
```sql
update personal_info set salary = 1.1 * salary;
```

#### Deleting record from view
```sql
delete from personal_info where age < 40;
```

#### Droping a view
```sql
drop view personal_info;
```

## Joins
#### Inner join
```sql
select e.fname, p.pname from employees as e inner join project as p on e.eid = p.eid;
```

#### Full outer join
```sql
select e.fname, p.pname from employees as e left outer join project as p on e.eid = p.eid
union
select e.fname, p.pname from employees as e right outer join project as p on e.eid = p.eid;
```

#### Left outer join
```sql
select e.fname, p.pname from employees as e left outer join project as p on e.eid = p.eid;
```

#### Right outer join
```sql
select e.fname, p.pname from employees as e right outer join project as p on e.eid = p.eid;
```

## Aggregation

#### Sum function
```sql
select sum(population) from city group by population;
```

#### Average function
```sql
select avg(population) from city group by population;
```

#### Count function
```sql
select district, count(district) from city group by district;
```

#### Maximum function
```sql
select max(population) from city group by population;
```

#### Minimum function
```sql
select min(population) from city group by population;
```

#### Standard deviation function
```sql
select stddev(population) from city group by population;
```

#### Group concat function
```sql
select group_concat(population) from city group by population;
```

## Procedure

#### Creating procedure
```sql
create procedure display_dbs()
show databases;
```

#### Calling procedure
```sql
call display_dbs();
```

## Transaction

#### Begin transaction
```sql
start transaction;
```

#### Create savepoint
```sql
savepoint sv_pt;
```

```sql
delete from city;       -- changing data in table
```

#### Rollback
```sql
rollback to sv_pt;
```

#### Releasing savepoint
```sql
release savepoint sv_pt;
```

#### Commiting changes
```sql
commit;
```
