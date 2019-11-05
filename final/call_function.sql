SET SERVEROUTPUT ON
declare
s_cost number(7,3);
BEGIN
s_cost:=f('shishir');
DBMS_OUTPUT.PUT_LINE('Total COST: '||s_cost);
END;
/