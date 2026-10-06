use education_db;
-- create table course(course_id int primary key auto_increment,course_name varchar(40) not null unique,duration varchar(20),fee int);
-- create table student(student_id int primary key auto_increment,student_name varchar(30) not null,email varchar(30) unique,age int,gender varchar(20),mark int,courseid int,foreign key(courseid) references course(course_id));
-- insert into course(course_name,duration,fee)values('python','6 months',55000),('java','5 months',50000),('data science','7 months',60000),('testing','4 months',45000)
-- insert into student(student_name,email,age,gender,mark,courseid)values('Anu','anu@gmail.com',28,'Male',95,1),('Abhi','abhi@gmail.com',23,'Female',88,1),('Arun','arun@gmail.com',20,'Male',76,2),('Anju','anju@gmail.com',24,'Female',92,2),('Rahul','rahul@gmail.com',25,'Male',85,3),('Amal','amal@gmail.com',18,'Male',82,3),('Meera','meera@gmail.com',25,'Female',65,4),('Sneha','sneha@gmail.com',26,'Female',70,4)

-- select*from student where mark>80 order by mark desc;

-- select max(mark),min(mark),avg(mark) from student;

-- select * from student order by mark desc limit 5;

-- select student_name,mark,age from student where age between 18 and 25 order by age;

-- select 
-- 	c.course_name,
--     count(s.student_id) 
-- from course c
-- left join student s
-- on c.course_id=s.courseid 
-- group by c.course_id,c.course_name;

-- select 
-- 	c.course_name,
--     count(s.student_id) 
-- from course c
-- inner join student s
-- on c.course_id=s.courseid 
-- group by c.course_id,c.course_name
-- having count(s.student_id)>2;

-- select
-- s.student_name,
-- s.mark,
-- c.course_name
-- from student s
-- inner join course c
-- on s.courseid=c.course_id;

-- select
-- c.course_name,
-- s.student_name
-- from course c
-- left join student s
-- on c.course_id=s.courseid;

-- select
-- student_name,mark
-- from student
-- where mark>(
-- select avg(mark)
-- from student);

-- select
-- s.student_name,s.mark,c.course_name
-- from student s
-- inner join course c
-- on s.courseid=c.course_id
-- where s.mark=(
-- select max(mark)
-- from student
-- where mark<(
-- select max(mark) from student));