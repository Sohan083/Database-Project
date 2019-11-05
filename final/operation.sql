set serveroutput on;
declare
cursor ct is
select * from instructor order by salary desc;
cr ct%rowtype;
ind integer:=0;


begin
open ct;
dbms_output.put_line('Top 5 instructor:');
loop
fetch ct into cr;
exit when ind>4;
ind:=ind+1;
dbms_output.put_line(ind || '.');
dbms_output.put_line('Instructor id: '||cr.id||' | Name: ' || cr.name || ' | Salary: '||cr.salary);
op(cr.id);
end loop;
close ct;
end;
show error;