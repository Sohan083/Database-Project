set serveroutput on
create or replace procedure p(dis in COURSE.COST%type) is
c_cost COURSE.COST%type;
cursor ct is
select * from course;
c_record ct%rowtype;
begin
open ct;
loop
fetch ct into c_record;
exit when ct%notfound;
c_cost:=dis/100;
c_cost:=c_record.cost*c_cost;
c_cost:=c_record.cost-c_cost;
update course set cost=c_cost where id=c_record.id;
end loop;
close ct;
end;
show error