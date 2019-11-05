SET SERVEROUTPUT ON
declare
f utl_file.file_type;
line varchar(10000);
i course.ind%type;
id course.id%type;
name course.name%type;
cost course.cost%type;

begin
f:= utl_file.fopen('MYD','read.csv','R');

if(utl_file.is_open(f))
THEN utl_file.get_line(f,line,10000);


LOOP

begin 
utl_file.get_line(f,line,10000);
i:= regexp_substr(line,'[^,]+',1,1);
id:= regexp_substr(line,'[^,]+',1,2);
name:= regexp_substr(line,'[^,]+',1,3);
cost:= regexp_substr(line,'[^,]+',1,4);


insert into course values(i,id,name,cost);

exception
when no_data_found
then exit;

end;

END LOOP;

end if;
utl_file.fclose(f);

end;
/