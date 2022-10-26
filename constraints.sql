-- creating basic database layout for using constraints

create database cheatsheet;
use cheatsheet;

create table Employee (
    ID int,
    FirstName varchar(255),
    LastName varchar(255),
    Age int
)

insert into employees values (1, "Vikas", "Ahlawat", 30);
insert into employees values (2, "nikita", "Jain", 25);
insert into employees values (3, "Ashish", "Kumar", 32);
insert into employees values (4, "Nikhil", "Sharma", 27);
insert into employees values (5, "anish", "kadian", 43);

-- NOT NULL CONSTRAINT
alter table Employee
change
    Age
    Age int NOT NULL;

--UNIQUE CONSTRAINT
alter table Employee
add constraint u_q unique(ID);

alter table Employee
drop constraint u_q;

--PRIMARY KEY CONSTRAINT
alter table Employee
add constraint p_k primary key(ID);

alter table Employee
drop constraint p_k;

--CHECK CONSTRAINT
alter table Employee
add constraint Age check (age>=30);

alter table Employee
drop check Age;

--DEFAULT CONSTRAINT
alter table Employee
alter Age set default 10;

alter table Employee
alter Age drop default;

