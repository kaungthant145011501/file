create table departments(
dept_no int not null,
dept_name varchar(30),
location varchar(30), 
primary key (dept_no)
);
create table workers(
emp_no int not null,
first_name varchar(30),
last_name varchar(30),
job_title varchar(30),
age int,
dept_no int,
primary key (emp_no),
foreign key (dept_no)references departments(dept_no)
);
desc workers;
desc departments;

insert into departments values
('1','packing','cario');

select *
from departments;

insert into departments values
('2','Account','lagos'),
('3','human resources','London');

insert into workers values
('1','Lawrence','Surani','Manager','56','1'),
('2','Jason','Argo','Manager','33','2'),
('3','Emily','Villa','Manager','32','3'),
('4','Ahmed','Mukani','Packer','23','1'),
('5','Joe','Toji','Packer','24','1'),
('6','Hattie','Smith','Accountant','56','2'),
('7','Sally','Boorman','Admin Assistant','34','3');

select *
from workers;

desc workers;

select first_name,job_title,age
from workers;

select dept_name
from departments;

select emp_no,last_name
from workers
where dept_no=1;