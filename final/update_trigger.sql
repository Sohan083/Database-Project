set serveroutput on
CREATE OR REPLACE TRIGGER update_credi
before update of Credit_info ON student
referencing old as o new as n
for each row
declare
s_id STUDENT.ID%type;
s_amn STUDENT.CREDIT_INFO%type;
s_ind student.ind%type;
s_pass student.password%type;
s_email student.email%type;
s_n student.Name%type;
s_h student.HomeTown%type;

begin
s_id:=:n.id;
select Credit_info,ind,password,email,Name,HomeTown into s_amn,s_ind,s_pass,s_email,s_n,s_h from student where id=s_id;
s_amn:=s_amn+:n.Credit_info;
delete student where id=s_id;
insert into student values(s_ind,s_id,s_pass,s_email,s_n,s_h,s_amn);
end;
show error