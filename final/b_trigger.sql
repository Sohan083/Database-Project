set serveroutput on
CREATE OR REPLACE TRIGGER insert_payment
before insert ON payment
referencing old as o new as n
for each row
declare
s_id STUDENT.ID%type;
s_amn STUDENT.CREDIT_INFO%type;
begin
s_id:=:n.student_id;
select Credit_info into s_amn from student where id=s_id;
s_amn:=s_amn-:n.amount;
if s_amn<0 then
raise_application_error (-20099,'Have not enough money');
else
update student set Credit_info=s_amn where id=s_id;
end if;
end;
show error