set serveroutput on
CREATE OR REPLACE FUNCTION f(s_id IN payment.student_id%type) return payment.amount%type IS
s_cost payment.amount%type:=0;
cursor ct is
select * from payment where student_id=s_id;
c_record ct%rowtype;
begin
open ct;
DBMS_OUTPUT.PUT_LINE('Registered Courses :');
loop
fetch ct into c_record;
exit when ct%notfound;
DBMS_OUTPUT.PUT_LINE('Course_id: '|| c_record.course_id);
s_cost:=s_cost+c_record.amount;
end loop;
close ct;
return s_cost;
end;
show error