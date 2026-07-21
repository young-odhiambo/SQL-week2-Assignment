-- ============================================ SECTION D - Range, Membership & Search Operators==============
-- marks between 50 and 80 (inclusive)
select *
from greenwood_academy.exam_results
where marks between 50 and 80;

-- exam date between 15th march 2024 and 18th march 2024
select * 
from greenwood_academy.exam_results
where exam_date between '2024-03-15' and '2024-03-18';

-- students who live in nairobi,mombasa,or Kisumu
select first_name,last_name
from greenwood_academy.students
where city in ('Nairobi','Mombasa','Kisumu');

-- students not in form 2 or form 3
select first_name,last_name
from greenwood_academy.students
where class not in ('Form 2', 'Form 3');

-- students whose first name starts with a or e
select first_name
from greenwood_academy.students
where first_name like 'A%' or first_name like 'E%';

-- subject that contain the word 'studies'
select subject_name
from greenwood_academy.subjects
where subject_name like '%Studies%';
