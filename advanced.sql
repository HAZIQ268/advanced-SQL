create database f2301;

use f2301;
-- CONTRAINTS
create table Student (
	id int primary key ,
    name varchar(10),
    age int,
    grade varchar(3),
    marks int ,
    city varchar(10)
);

select * from Student;

insert into Student (id , name , age , grade , marks , city) values
(101 , "jerny" , 50 , "B" , 60 , "Karachi"),
(102 , "jexwell" , 26 , "A", 78 , "Lahore"),
(103, "maxo" , 65 , "D", 30 , "Islamabad");

select * from Student;

 -- USE THIS FOR SPECIFIC DATA --
 
 select * from Student where city = "Karachi";
select * from Student where age = 50; 
select * from Student where city in ("karachi" , "islamabad" , "Multan");
select * from Student where age between 20 and 50;
select * from Student where marks = 95 or grade = "B";

select min(marks) from Student;
select max(marks) from Student;
select min(age) from Student;
select max(age) from Student;
select count(name) from Student;

--  Create Group -- 
select city , name , marks from Student group by city , name , marks;
select name , grade from Student group by name , grade;


-- ORDER BY

select * from Student order by city DESC;
select * from Student order by age ASC;

-- UPDATE
select * from student;
set sql_safe_updates =0;
update student set marks =marks+3;

