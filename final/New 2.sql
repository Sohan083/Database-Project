SET SERVEROUTPUT ON
create or replace procedure f(s_id in student.id%type,s_credit in STUDENT.CREDIT_INFO%type) is

am STUDENT.CREDIT_INFO%type;

BEGIN
select Credit_info into am from student where id=s_id;
am:=am+s_credit;
update student set Credit_info=am where id=s_id;

END;

show error