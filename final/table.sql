drop table inst_course;
drop table payment;
drop table student;
drop table instructor;
drop table course;
CREATE TABLE course (
	ind integer,
	id varchar(20),
	name varchar(20) not null,
	cost number(7,3) not null,
	PRIMARY KEY (id));
	



CREATE TABLE instructor (
	ind integer,
	id varchar(20),
	password varchar(20) not null,
	email varchar(20) not null,
	name varchar(20) not null,
	institute varchar(20) not null,
	salary number(10) not null,
	PRIMARY KEY (id));
	



create table inst_course(
	ind integer,
    instructor_id varchar(20),
	course_id varchar(20),
	primary key(instructor_id,course_id),
	foreign key(instructor_id) references instructor (id),
	foreign key(course_id) references course (id));



CREATE TABLE student (
	ind integer,
	id varchar(20),
	password varchar(20) not null,
	email varchar(20) not null,
	Name varchar(20) not null,
	HomeTown varchar(20) not null,
	Credit_info number(7,3) not null,
	PRIMARY KEY (iD));
	


create table payment(
	ind number(4),
    student_id varchar(20),
	course_id varchar(20),
	payment_date varchar(20),
	amount number(7,3),
	foreign key(student_id) references student(id),
	foreign key(course_id) references course(id));
	




