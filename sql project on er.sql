create database  thopstech;
use thopstech;
create table courses (course_id int primary key, course_name varchar(100), course_duration varchar(50), course_fee int, course_desc text);
desc courses;
insert into courses values
(1,'full stack development','six months',45000,'html css js react node'),
(2,'python programming','four months',20000,'core python'),
(3,'data science','eight months',60000,'ml ai dl'),
(4,'java programming','four months',25000,'core + adv java'),
(5,'cyber security','six months',55000,'ethical hacking'),
(6,'aws cloud','three months',30000,'aws essentials'),
(7,'embedded systems','six months',50000,'iot + microcontroller'),
(8,'ui ux design','three months',20000,'figma'),
(9,'sql databases','two months',15000,'mysql mongodb'),
(10,'mobile app dev','six months',40000,'flutter');
select*from courses;
create table faculty (faculty_id int primary key, faculty_name varchar(100), faculty_phone varchar(20), faculty_email varchar(100), specialization varchar(100),course_id  int,room_id int,foreign key(course_id) references courses(course_id),foreign key(room_id) references rooms(room_id));
insert into faculty values
(1,'ravi kumar','9876543210','ravi@thopstech.com','full stack',1,1),
(2,'priya sharma','9876543211','priya@thopstech.com','python',2,3),
(3,'imran ali','9876543212','imran@thopstech.com','cyber',3,4),
(4,'sangeeta rao','9876543213','sangeeta@thopstech.com','java',4,1),
(5,'ashok kumar','9876543214','ashok@thopstech.com','aws',6,4),
(6,'nisha patel','9876543215','nisha@thopstech.com','data science',8,3),
(7,'ganesh reddy','9876543216','ganesh@thopstech.com','embedded',10,1),
(8,'rekha s','9876543217','rekha@thopstech.com','uiux',7,2),
(9,'vikram singh','9876543218','vikram@thopstech.com','dba',9,3),
(10,'shalini j','9876543219','shalini@thopstech.com','mobile',10,4);
create table rooms (room_id int auto_increment primary key, room_name varchar(50), capacity int);
insert into rooms values (1,'room a',40),(2,'room b',30),(3,'room c',25),(4,'room d',32),(5,'room e',45);
create table students (student_id int primary key, first_name varchar(100), last_name varchar(100), gender varchar(10), dob date, phone varchar(20), email varchar(100), address varchar(255), city varchar(50), course_id int,admission_id int);
desc students;
alter table students modify student_id int;
alter table students drop primary key;
insert into students values
(1,'arun','k','male','2000-02-10','9000011111','arun@mail.com','street1','chittoor',1,101),
(2,'meena','s','female','2001-05-12','9000022222','meena@mail.com','street2','tirupati',2,102),
(3,'ravi','teja','male','1999-07-22','9000033333','ravi@mail.com','street3','chennai',3,103),
(4,'harshad','syed','male','2001-06-15','9000044444','harshad@mail.com','street4','madanapalle',7,104);
update students set admission_id = 1001 where student_id = 1;
update students set admission_id = 1002 where student_id = 2;
update students set admission_id = 1003 where student_id = 3;
update students set admission_id = 1004 where student_id = 4;
alter table students add primary key (student_id);
truncate table student;
show tables;
desc student;
drop table student;
create table admissions (admission_id int primary key, student_id int, course_id int, admission_date date, counsellor_name varchar(100), payment_status varchar(50));
insert into admissions values
(1001,1,1,'2024-01-05','anil','paid'),
(1002,2,2,'2024-02-10','suresh','pending'),
(1003,3,3,'2024-03-12','kiran','paid'),
(1004,4,7,'2024-03-15','anil','pending');
select* from admissions;
select* from students;
create table batches (batch_id int primary key, course_id int, faculty_id int, room_id int, start_date date, end_date date, batch_time varchar(50));
insert into batches  values
(2025-1,1,1,1,'2024-01-10','2024-07-10','10 am'),
(2025-2,2,2,2,'2024-02-15','2024-05-15','2 pm'),
(2025-3,7,7,3,'2024-03-01','2024-09-01','12 pm');
create table payments (payment_id int primary key, student_id int, course_id int, amount_paid int, payment_date date, payment_mode varchar(50), balance_amount int);
insert into payments values
(1011,1,1,45000,'2024-01-06','cash',0),
(1022,2,2,10000,'2024-02-12','upi',10000),
(1003,4,7,25000,'2024-03-16','upi',25000);
create table attendance (attendance_id int primary key, student_id int, batch_id int, date date, status varchar(20));
insert into attendance values
(1001,1,1,'2024-01-11','present'),
(1002,2,2,'2024-02-16','present'),
(1003,4,3,'2024-03-02','absent');
create table exams (exam_id int primary key, student_id int, course_id int, exam_date date, marks int, grade varchar(10));
insert into exams values
(5156,1,1,'2024-04-01',85,'a'),
(5157,2,2,'2024-05-01',72,'b'),
(5158,4,7,'2024-06-01',88,'a');
create table placement (placement_id int primary key, student_id int, company_name varchar(100), role varchar(100), salary int, interview_date date, status varchar(50));
insert into placement values
(21,1,'infosys','developer',450000,'2024-10-10','selected'),
(22,4,'tcs','embedded engineer',500000,'2024-11-12','selected');
create table labs (lab_id int primary key, lab_name varchar(50), systems_count int, incharge varchar(100));
insert into labs values (1,'lab 1',25,'imran'),(2,'lab 2',30,'ravi');
create table staff (staff_id int primary key, staff_name varchar(100), role varchar(50), phone varchar(20), email varchar(100), shift varchar(50));
insert into staff values
(121,'anil kumar','admin','9001112222','anil@thopstech.com','morning'),
(122,'suresh r','support','9002223333','suresh@thopstech.com','evening');
create table users (user_id int  primary key, username varchar(50), password varchar(100), staff_id int);
insert into users values (1,'admin','admin123',1),(2,'staff1','pass123',2);
show tables;
alter table rooms add course_id int;
alter table rooms add constraint foreign key(course_id) references courses(course_id);
alter table students add constraint foreign key(course_id) references courses(course_id);
alter table students add constraint foreign key(admission_id) references admissions(admission_id);
alter table admissions add constraint foreign key(course_id) references courses(course_id);
alter table admissions add constraint foreign key(student_id) references students(student_id);
alter table admissions add  payment_id int ;
alter table admissions add constraint foreign key(payment_id) references payments(payment_id);
alter table attendance add constraint foreign key(student_id) references students(student_id);
alter table attendance add course_id int;
alter table attendance add constraint foreign key(course_id) references courses(course_id);
alter table exams add constraint foreign key(student_id) references students(student_id);
alter table exams add constraint foreign key(course_id) references courses(course_id);
alter table exams  add admission_id int;
alter table exams add constraint foreign key(admission_id) references admissions(admission_id);
alter table exams add attendance_id int;
alter table exams add constraint foreign key(attendance_id) references attendance(attendance_id);
alter table placement add constraint foreign key(student_id) references students(student_id);
alter table placement add exam_id int;
alter table placement add constraint foreign key(exam_id) references exams(exam_id);
alter table batches add constraint foreign key (course_id) references courses(course_id);
alter table batches add constraint foreign key(room_id) references rooms(room_id);
alter table labs add student_id int;
alter table labs add  staff_id int;
alter table labs add constraint foreign key (student_id) references students(student_id);
alter table labs add constraint foreign key(staff_id) references staff(staff_id);




