# MySQL cheatsheet

I have even uploaded the .sql file which you can run and directly run them in the sql prompt.

### General Commands
To run sql files
```sql
source <filename>.sql;
```

## Data Definition Language (DDl)

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
