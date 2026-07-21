-- ==================== SECTION B - Filling the database (DML: INSERT,UPDATE,DELETE)==========

-- inserting data into students table
insert into greenwood_academy.students(first_name,last_name,gender,date_of_birth,class,city)
values ('Amina','Wanjiku','F','2008-03-12','Form 3','Nairobi'),
('Brain','Ochieng','M','2007-07-25','Form 4','Mombasa'),
('Cynthia','Mutua','F','2008-11-05','Form 3','Kisumu'),
('David','Kamau','M','2007-02-18','Form 4','Nairobi'),
('Esther','Akinyi','F','2009-09-14','Form 2','Nakuru'),
('Felix','Otieno','M','2009-09-14','Form 2','Eldoret'),
('Grace','Mwangi','F','2008-01-22','Form 3','Nairobi'),
('Hassan','Abdi','M','2007-04-09','Form 4','Mombasa'),
('Ivy','Chebet','F','2009-12-01','Form 2','Nakuru'),
('James','Kariuki','M','2008-08-17','Form 3','Nairobi');

-- inserting data into subjects table
insert into greenwood_academy.subjects(subject_name,department,teacher_name,credit_hours)
values ('Mathematics','Sciences','Mr. Njoroge',4),
('English','Languages','Ms. Adhiambo',3),
('Biology','Sciences','Ms. Otieno',4),
('History','Humanities','Mr. Waweru',3),
('Kiswahili','Languages','Ms. Nduta',3),
('Physics','Sciences','Mr. Kamande',4),
('Geography','Humanities','Ms. Chebet',3),
('Chemistry','Sciences','Ms. Muthoni',4),
('Computer Studies','Sciences','Mr. Oduya',3),
('Business Studies','Humanities','Ms. Wangari',3);

-- inserting data into exam_results
insert into greenwood_academy.exam_results(student_id,subject_id,marks,exam_date,grade)
values(1,1,78,'2024-03-15','B'),
(1,2,85,'2024-03-16','A'),
(2,1,92,'2024-03-15','A'),
(2,3,55,'2024-03-17','C'),
(3,2,49,'2024-03-16','D'),
(3,4,71,'2024-03-18','B'),
(4,1,88,'2024-03-14','A'),
(4,6,63,'2024-03-19','C'),
(5,5,39,'2024-03-20','F'),
(6,9,95,'2024-03-21','A');

select * from greenwood_academy.students;
select * from greenwood_academy.subjects;
select * from greenwood_academy.exam_results;

-- Q12. Updating Esther Akinyi city from Nakuru to Nairobi. 

update greenwood_academy.students
set city = 'Nairobi'
where student_id = 5;

-- updating the exam_results table
update greenwood_academy.exam_results
set marks = 59, grade = 'C'
where result_id = 5;

-- Deleting result_id 9 
delete from greenwood_academy.exam_results
where result_id = 9;
