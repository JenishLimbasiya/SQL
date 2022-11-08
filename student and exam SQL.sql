/* create table name : student and exam */

/* create table name */
CREATE TABLE student
(
   Rollno int(200) PRIMARY KEY  AUTO_INCREMENT,
   Name varchar(200),
   Branch varchar(200)
)

/*data insert into student table */
INSERT into student (Name,Branch) VALUES ('jay','computer science');
INSERT into student (Name,Branch) VALUES ('suhani','electronic and computer');
INSERT into student (Name,Branch) VALUES ('kriti','electronic and computer')

/*create exam table */
CREATE table exam
(
    Rollno int(200),
    subject_code varchar(200),
    marks varchar(200),
    branch_code varchar(200),
    FOREIGN KEY exam (Rollno) REFERENCES student (Rollno)
)

/* data insert into exam table */
insert into exam (Rollno,subject_code,marks,branch_code) VALUES (1,'CS11',50,'CS');
insert into exam (Rollno,subject_code,marks,branch_code) VALUES (1,'CS12',60,'CS');
insert into exam (Rollno,subject_code,marks,branch_code) VALUES (2,'EC101',66,'EC');
insert into exam (Rollno,subject_code,marks,branch_code) VALUES (2,'EC102',70,'EC');
insert into exam (Rollno,subject_code,marks,branch_code) VALUES (3,'EC101',45,'EC');
insert into exam (Rollno,subject_code,marks,branch_code) VALUES (3,'EC102',50,'EC')
