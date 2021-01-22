
-- Setting up basic stuff to work on them
create database cheatsheet;
use cheatsheet;

create table if not exists employee
(
    employee_id int,
    name varchar(20),
    months int,
    salary int
);

insert into employee values (330,"Rose",5,2248);
insert into employee values (1233,"Angela",7,1296);
insert into employee values (1901,"Frank",10,2763);
insert into employee values (2035,"Patrick",1,4583);
insert into employee values (2405,"Lisa",7,4350);
insert into employee values (2974,"Kimberly",11,2874);
insert into employee values (3190,"Bonnie",11,3758);
insert into employee values (3506,"Michael",9,1936);
insert into employee values (3708,"Todd",22,4046);
insert into employee values (4428,"Joe",22,3802);
insert into employee values (5962,"Earl",11,2958);
insert into employee values (6060,"Robert",22,4128);
insert into employee values (6418,"Amy",2,4832);
insert into employee values (7466,"Pamela",1,4199);
insert into employee values (9102,"Maria",11,2958);
insert into employee values (11863,"Joe",18,1721);
insert into employee values (12004,"Linda",15,2306);
insert into employee values (12387,"Melissa",20,1854);
insert into employee values (13835,"Carol",20,4340);
insert into employee values (15151,"Paula",15,1526);
insert into employee values (15286,"Marilyn",10,3087);
insert into employee values (15675,"Jennifer",2,2336);
insert into employee values (16493,"Harry",14,4755);
insert into employee values (17858,"David",13,3658);
insert into employee values (19035,"Julia",4,2195);
insert into employee values (19172,"Kevin",1,2113);
insert into employee values (21638,"Paul",6,3120);
insert into employee values (22684,"James",14,1370);
insert into employee values (23621,"Kelly",7,1923);
insert into employee values (24011,"Robin",22,1880);
insert into employee values (24611,"Ralph",22,1495);
insert into employee values (25109,"Gloria",2,1979);
insert into employee values (25120,"Victor",20,1557);
insert into employee values (28247,"David",23,2212);
insert into employee values (30183,"Joyce",20,2748);
insert into employee values (30712,"Donna",8,2604);
insert into employee values (32502,"Michelle",1,2086);
insert into employee values (32654,"Stephanie",17,1444);
insert into employee values (33086,"Gerald",23,2206);
insert into employee values (33132,"Walter",11,4180);
insert into employee values (37008,"Christina",8,3100);
insert into employee values (38246,"Brandon",3,4339);
insert into employee values (38272,"Elizabeth",23,3967);
insert into employee values (38964,"Joseph",4,2194);
insert into employee values (39789,"Lawrence",9,1872);
insert into employee values (40797,"Marilyn",15,2112);
insert into employee values (41228,"Lori",13,4350);
insert into employee values (44436,"Matthew",15,4673);
insert into employee values (45285,"Jesse",1,3768);
insert into employee values (47458,"John",13,3104);
insert into employee values (47496,"Martha",15,4020);
insert into employee values (47920,"Timothy",10,1745);
insert into employee values (48129,"Christine",22,3738);
insert into employee values (50664,"Anthony",22,4912);
insert into employee values (51741,"Paula",1,2492);
insert into employee values (52923,"Kimberly",17,1955);
insert into employee values (55238,"Louise",1,2717);
insert into employee values (56775,"Martin",16,1385);
insert into employee values (57065,"Paul",23,3379);
insert into employee values (58343,"Antonio",21,3268);
insert into employee values (59256,"Jacqueline",14,3913);
insert into employee values (60119,"Diana",13,5149);
insert into employee values (61191,"Joh",5,1775);
insert into employee values (65288,"Dorothy",22,3792);
insert into employee values (65375,"Evelyn",6,4079);
insert into employee values (66442,"Phillip",9,1894);
insert into employee values (67137,"Evelyn",15,1311);
insert into employee values (68942,"Debra",20,3704);
insert into employee values (69085,"David",11,1845);
insert into employee values (69234,"Jok",12,5088);
insert into employee values (69475,"Brandon",19,2279);
insert into employee values (69787,"Ann",9,1311);
insert into employee values (70963,"Emily",8,5247);
insert into employee values (71569,"Dorothy",22,4088);
insert into employee values (72030,"Jonathan",4,5009);
insert into employee values (72370,"Dorothy",18,3174);
insert into employee values (72785,"Marilyn",1,1860);
insert into employee values (72974,"Norma",21,1558);
insert into employee values (74662,"Nancy",6,3223);
insert into employee values (76876,"Andrew",11,1746);
insert into employee values (77609,"Keith",2,1219);
insert into employee values (78101,"Benjamin",7,4414);
insert into employee values (79744,"Charles",11,1911);
insert into employee values (80475,"Alan",16,1853);
insert into employee values (80895,"Tammy",8,1591);
insert into employee values (81381,"Anna",16,1569);
insert into employee values (82828,"James",23,4398);
insert into employee values (85287,"Robin",23,2078);
insert into employee values (87170,"Jean",18,3895);
insert into employee values (87355,"Andrew",15,1446);
insert into employee values (89017,"Roy",8,3443);
insert into employee values (90507,"Diana",9,5101);
insert into employee values (90558,"Christina",23,3498);
insert into employee values (92908,"Jesse",13,4753);
insert into employee values (95322,"Joyce",18,1577);
insert into employee values (95983,"Patricia",23,1469);
insert into employee values (96963,"Gregory",16,5071);
insert into employee values (97178,"Brian",19,3144);
insert into employee values (98271,"Christine",3,3796);
insert into employee values (98491,"Lillian",3,1920);
insert into employee values (98493,"Nancy",22,4912);
insert into employee values (98495,"Patricia",22,4912);
insert into employee values (98497,"Angela",22,4912);
insert into employee values (98499,"Gregory",22,4912);
insert into employee values (99491,"Lillian",22,4912);
insert into employee values (99493,"Evelyn",22,491);

-- Greater than
select * from employee where salary > 3100;

-- Greater than equal to
select * from employee where salary >= 3100;

-- Less than
select * from employee where salary < 4500;

-- Less than equal to
select * from employee where salary <= 4350;

-- Range
select * from employee where salary > 3000 and salary < 4000;

select * from employee where salary between 3000 and 4000;

-- Like Operator
select * from employee where name like '%Jo%';          -- Similar to *Jo* in regrex

select * from employee where name like 'Jo_';           -- Similar to Jo. in regrex