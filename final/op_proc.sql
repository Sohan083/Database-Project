set serveroutput on
create or replace procedure op(inst_id instructor.id%type) is
c_id inst_course.course_id%type;
c_name course.name%type;
co integer;
cursor ctt is
select * from inst_course where instructor_id=inst_id;
c_record ctt%rowtype;
begin
open ctt;
select count(*) into co from inst_course where instructor_id=inst_id;
dbms_output.put_line('Total '||co||' Courses:');
loop
fetch ctt into c_record;
exit when ctt%notfound;
select name into c_name from course where id=c_record.course_id;
dbms_output.put_line('Course id: '|| c_record.course_id ||' | Course Name: '||c_name);
end loop;
close ctt;
end;
show error