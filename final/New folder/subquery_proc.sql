SET SERVEROUTPUT ON
create or replace procedure sub(s_id in student.id%type) is
BEGIN

select * from instructor where id in (select instructor_id from inst_course where course_id in (select id from course where id in (select course_id from payment where student_id=s_id)));

END;
/
show error