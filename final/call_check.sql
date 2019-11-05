SET SERVEROUTPUT ON
declare
x student.ind%type;
s_i STUDENT.ID%type;
BEGIN
checking('rony','1235',x,s_i);
if x>0 then
DBMS_OUTPUT.PUT_LINE('Welcome '||s_i);
else
DBMS_OUTPUT.PUT_LINE('Wrong id/password');
end if;
END;
/