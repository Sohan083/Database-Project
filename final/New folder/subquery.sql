set serveroutput on;
select * from instructor where id in (select instructor_id from inst_course where course_id in (select id from course where id in (select course_id from payment where student_id='sohan')));
