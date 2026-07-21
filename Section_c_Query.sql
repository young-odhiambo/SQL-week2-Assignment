-- =================================== SECTION C - Querying the Data (Filtering with WHERE) ==============
-- all students in form 4
select first_name, last_name
from greenwood_academy.students
where class = 'Form 4';

-- subjects in the sciences department
select subject_name
from greenwood_academy.subjects
where department = 'Sciences';

-- exams results where marks is greater then of equal to 70
select *
from greenwood_academy.exam_results
where marks >=70;

-- Finding all females
select first_name,last_name
from greenwood_academy.students
where gender = 'F';

-- students in form 3 and from Nairobi
select first_name,last_name
from greenwood_academy.students
where class = 'Form 3' and city = 'Nairobi';

-- students that are either in form 2 or form 4
select first_name,last_name
from greenwood_academy.students
where class = 'Form 2' or class = 'Form 4';
