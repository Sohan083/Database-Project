set serveroutput on
declare
f utl_file.file_type;

cursor c is
select *from payment;

begin
f:= utl_file.fopen('MYD','write.txt','W');
utl_file.put(f,'All transaction history:');
utl_file.new_line(f);

for c_record in c

loop
utl_file.put(f,'--->'||c_record.ind);
utl_file.new_line(f);
utl_file.put(f,'Student: '||c_record.student_id);
utl_file.new_line(f);
utl_file.put(f,'Course: '||c_record.course_id);
utl_file.new_line(f);
utl_file.put(f,'Amount: '||c_record.amount);
utl_file.new_line(f);
utl_file.put(f,'Date: '||c_record.payment_date);
utl_file.new_line(f);
end loop;

utl_file.fclose(f);
end;
/