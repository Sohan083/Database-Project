SET SERVEROUTPUT ON
declare
s_cost number(7,3);
BEGIN
u('shishir',s_cost);
DBMS_OUTPUT.PUT_LINE('Total COST: '||s_cost);
END;
/