set serveroutput on;
select STUDENT.NAME,STUDENT.ID,PAYMENT.COURSE_ID,PAYMENT.PAYMENT_DATE from student inner join payment on STUDENT.ID=PAYMENT.STUDENT_ID;