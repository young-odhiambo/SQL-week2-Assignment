-- ===================================== SECTION E - COUNT ======================
-- number of students from form 3
select count(*) as num_students
from greenwood_academy.students
where class = 'Form 3';

-- number of exams with marks 70 and above
select count(*) as num_marks_above_70
from greenwood_academy.exam_results
where marks >=70;
