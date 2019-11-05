SET SERVEROUTPUT ON
create or replace procedure checking(s_id in student.id%type,pas in STUDENT.PASSWORD%type,x out student.ind%type,s_i out STUDENT.ID%type) is

BEGIN
select count(*) into x from student where s_id=id and pas=password;
s_i:=s_id;
END;
/
show error