-- ==== SECTION A - Building the Database (DDL) ============
create  schema greenwood_academy;
set search_path to greenwood_academy;
show search_path;

-- Creating student table
 create table greenwood_academy.students(
 student_id serial primary key,
 first_name varchar(50) not null,
 last_name varchar (50) not null,
 gender varchar (1),
 date_of_birth date,
 class varchar (10),
 city varchar (50)
 );

-- creating subjects table
create table greenwood_academy.subjects(
subject_id serial primary key,
subject_name varchar(100) unique,
department varchar (50),
teacher_name varchar (100),
credits int
);

-- creating exam_results table
create table greenwood_academy.exam_results(
result_id serial primary key,
student_id int not null,
subject_id int not null,
marks int not null,
exam_date date,
grade varchar (2),
foreign key(student_id) references greenwood_academy.students(student_id),
foreign key (subject_id) references greenwood_academy.subjects(subject_id)
);

alter table greenwood_academy.students
add column phone_number varchar(20);

alter table greenwood_academy.subjects
rename column credits to credit_hours;

alter table greenwood_academy.students
drop column phone_number;
