-- ===================================== SECTION C - CASE WHEN ==================
/*case when to label marks
 * 'Distinction' if marks >= 80
 	'Merit' if marks >= 60
	'Pass' if marks >= 40
	'Fail' if marks below 40
 * */
 
select result_id,marks,
case 
	when marks >= 80 then 'Distinction'
	when marks >= 60 then 'Merit'
	when marks >= 40 then 'Pass'
	else 'Fail'
end as class_performance
from greenwood_academy.exam_results;

/* Case when to label students
 * Senior - form 3 or form 4
 * junior - form 2 or form 1
 */
select first_name,last_name,class,
case 
	when class = 'Form 3' or class = 'Form 4' then 'Senior'
	when class = 'Form 2' or class = 'Form 1' then 'Junior'
end as student_level
from greenwood_academy.students;
