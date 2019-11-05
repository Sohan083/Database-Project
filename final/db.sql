drop table course;
CREATE TABLE course (
	ind integer,
	id varchar(20),
	name varchar(20) not null,
	cost number(7,3) not null,
	PRIMARY KEY (id));
	
insert into course values(1,'WEB','Web Development',100.0);
insert into course values(2,'GAME','Game Development',150.0);
insert into course values(3,'LANG1','C',100.0);
insert into course values(4,'LANG2','C++',200.0);
insert into course values(5,'LANG3','Java',200.0);
insert into course values(6,'WEB2','Web Development',100.0);



drop table instructor;
CREATE TABLE instructor (
	ind integer,
	id varchar(20),
	password varchar(20) not null,
	email varchar(20) not null,
	name varchar(20) not null,
	institute varchar(20) not null,
	salary number(10) not null,
	PRIMARY KEY (id));
	
insert into instructor values(1,'shishir092','p1507092','shishir@gmail.com','Shishir','KUET','5000');
insert into instructor values(2,'nayan082','p1507082','nayan@gmail.com','Nayan','KUET','5000');
insert into instructor values(3,'munna087','p1507087','munna@gmail.com','Munna','KUET','5000');
insert into instructor values(4,'piyal43','p1507043','piyal@gmail.com','Piyal','KUET','5000');
insert into instructor values(5,'habib062','p1507063','habib@gmail.com','Habib','KUET','5000');



drop table inst_course;
create table inst_course(
	ind integer,
    instructor_id varchar(20),
	course_id varchar(20),
	primary key(instructor_id,course_id),
	foreign key(instructor_id) references instructor (id),
	foreign key(course_id) references course (id));

insert into inst_course values(1,'shishir092','WEB');
insert into inst_course values(2,'nayan082','LANG1');
insert into inst_course values(3,'shishir092','GAME');
insert into inst_course values(4,'nayan082','WEB');
insert into inst_course values(5,'munna087','LANG2');
insert into inst_course values(6,'nayan082','GAME');



drop table student;
CREATE TABLE student (
	ind integer,
	id varchar(20),
	password varchar(20) not null,
	email varchar(20) not null,
	Name varchar(20) not null,
	HomeTown varchar(20) not null,
	Credit_info varchar(20) not null,
	PRIMARY KEY (iD));
	
insert into student values(1,'shishir','1234','a@gmail.com','ab','Dhaka','12345678');
insert into student values(2,'rony','1235','b@gmail.com','bc','Khulna','123453438');
insert into student values(3,'nasim','1234','c@gmail.com','cd','Magura','12345623');
insert into student values(4,'sohan','12378','d@gmail.com','de','Dhaka','123456235');
insert into student values(5,'asif','123d','e@gmail.com','ef','Khulna','1234563453');
insert into student values(6,'somir','12378','d@gmail.com','de','Dhaka','123456235');
insert into student values(7,'barat','123d','e@gmail.com','ef','Khulna','12345634543');


drop table payment;
create table payment(
	ind number(4),
    student_id varchar(20),
	course_id varchar(20),
	payment_date varchar(20),
	amount number(7,3),
	primary key(student_id,course_id),
	foreign key(student_id) references student(id),
	foreign key(course_id) references course(id));
	
insert into payment values(1,'shishir','WEB','12-02-2018',100.0);
insert into payment values(2,'nasim','LANG1','15-02-2018',100.0);
insert into payment values(3,'shishir','GAME','16-02-2018',150.0);
insert into payment values(4,'rony','LANG2','16-02-2018',200.0);
insert into payment values(5,'sohan','LANG1','15-02-2018',100.0);
insert into payment values(6,'asif','GAME','16-02-2018',150.0);
insert into payment values(7,'somir','LANG2','16-02-2018',200.0);
insert into payment values(8,'shishir','LANG2','12-02-2018',100.0);
insert into payment values(9,'nasim','WEB','15-02-2018',100.0);
insert into payment values(10,'shishir','LANG1','16-02-2018',150.0);
insert into payment values(11,'rony','GAME','16-02-2018',200.0);
insert into payment values(12,'sohan','LANG2','15-02-2018',100.0);
insert into payment values(13,'asif','LANG1','16-02-2018',150.0);
insert into payment values(14,'somir','GAME','16-02-2018',200.0);




