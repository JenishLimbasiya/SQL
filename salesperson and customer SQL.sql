/* create table SALESPERSON */
CREATE TABLE SALESPERSON
(
    SNO int (200) PRIMARY KEY,
    SNAME varchar(200),
    CITY VARCHAR(200),
    COMM double (35)   
)

/* deta insert into SALESPERSON TABLE */
INSERT INTO salesperson(SNO,SNAME,CITY,COMM)VALUES(1001,'peel','london',0.12);
INSERT INTO salesperson(SNO,SNAME,CITY,COMM)VALUES(1002,'serres','san jose',0.13);
INSERT INTO salesperson(SNO,SNAME,CITY,COMM)VALUES(1004,'motika','london',0.11);
INSERT INTO salesperson(SNO,SNAME,CITY,COMM)VALUES(1007,'rafkin','barcelona',0.15);
INSERT INTO salesperson(SNO,SNAME,CITY,COMM)VALUES(1003,'axelrod','new yourk',0.1)

/* create table CUSTOMER */
CREATE TABLE CUSTOMER
(
    CNM INT(200) PRIMARY KEY,
    CNAME VARCHAR(200),
    CITY VARCHAR(200),
    RATING VARCHAR(200),
    SNO INT (200),
    FOREIGN KEY CUSTOMER(SNO) REFERENCES salesperson(SNO)
)

/* deta insert into CUSTOMER TABLE */
INSERT INTO customer(CNM,CNAME,CITY,RATING,SNO) VALUES(201,'HOffman','london',100,1001);
INSERT INTO customer(CNM,CNAME,CITY,RATING,SNO) VALUES(202,'Giovanne','roe',200,1003);
INSERT INTO customer(CNM,CNAME,CITY,RATING,SNO) VALUES(203,'liu','san jose',300,1002);
INSERT INTO customer(CNM,CNAME,CITY,RATING,SNO) VALUES(204,'grass','barcelona',100,1002);
INSERT INTO customer(CNM,CNAME,CITY,RATING,SNO) VALUES(206,'clemens','london',300,1007);
INSERT INTO customer(CNM,CNAME,CITY,RATING,SNO) VALUES(207,'pereira','roe',100,1004)

/* 1) Names and cities of all salespeople in London with commission above 0.12 */
      ANS: SELECT SNAME,CITY FROM salesperson WHERE CITY='london' AND COMM>0.12;
   
   
/* 2) All salespeople either in Barcelona or in London */
	  ANS : SELECT* FROM salesperson WHERE CITY='barcelona' OR CITY='london';
	
	
/* 3) All salespeople with commission between 0.10 and 0.12. (Boundary values
      should be excluded). */ 
	  ANS : SELECT * FROM `salesperson` WHERE COMM>0.10 AND COMM<0.12;
	
	
/* 4) All customers excluding those with rating <= 100 unless they are located in
      Rom */
      ANS : SELECT * FROM `customer` WHERE NOT RATING<=100 OR CITY='rome';
