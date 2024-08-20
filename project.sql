create database college

use college

create table Student_Data(
		r_no int,
		name varchar(50) ,
		dept varchar(30)
)

insert into Student_Data() values(01,"Krish","AI&DS")
insert into Student_Data() values(02,"Ram","CSE")
insert into Student_Data() values(03,"Siva","CSE")

select * from Student_Data

select dept from Student_Data where r_no=01

truncate table Student_Data

select * from Student_Data

insert into Student_Data() values(01,"Krish","AI&DS")
insert into Student_Data() values(02,"Ram","CSE")
insert into Student_Data() values(03,"Siva","CSE")

select * from Student_Data

SET SQL_SAFE_UPDATES = 0
delete from Student_Data where name="Siva"
SET SQL_SAFE_UPDATES = 1

SET SQL_SAFE_UPDATES = 0
update Student_Data set dept="AI&DS" where r_no=02
SET SQL_SAFE_UPDATES = 1


select * from Student_Data

alter table Student_Data rename column r_no to roll_no

select * from Student_Data

drop table Student_Data
