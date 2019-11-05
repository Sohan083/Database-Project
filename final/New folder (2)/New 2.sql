SET SERVEROUTPUT ON
create or replace procedure u(s_id in PAYMENT.STUDENT_ID%type,s_cost out payment.amount%type) is

s_course PAYMENT.COURSE_ID%type;
am payment.amount%type;
co payment.ind%type:=1;
c payment.amount%type:=0;


BEGIN

loop
   begin
select course_id,amount into s_course,am from payment where student_id=s_id and ind=co;
DBMS_OUTPUT.PUT_LINE('Course_id: '|| s_course);

c:=c+am;
EXCEPTION
      WHEN others THEN
         null;
    end;
co:=co+1;    
exit when co>14;
end loop;
s_cost:=c;
END;
/
show error