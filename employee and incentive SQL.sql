/* create table given below : employee and incentive */

/* create table employee */
CREATE TABLE employee
(
   employee_id int(200) PRIMARY KEY AUTO_INCREMENT,
   first_name varchar(200),
   last_name varchar(200),
   salary varchar(200),
   joining_date varchar(200),
   department varchar(200)
)

/* data insert into employee table */
INSERT into employee (first_name,last_name,salary,joining_date,department) VALUES ('john','abraham',1000000,'01-jan-13 12.00AM','BANKING');
INSERT into employee (first_name,last_name,salary,joining_date,department) VALUES ('michael','clarke',8000000,'01-jan-13 12.00AM','insurance');
INSERT into employee (first_name,last_name,salary,joining_date,department) VALUES ('roy','thomas',700000,'01-jan-13 12.00AM','BANKING');
INSERT into employee (first_name,last_name,salary,joining_date,department) VALUES ('tom','jose',600000,'01-feb-13 12.00AM','insurance');
INSERT into employee (first_name,last_name,salary,joining_date,department) VALUES ('jerry','pinto',650000,'01-jan-13 12.00AM','insurance');
INSERT into employee (first_name,last_name,salary,joining_date,department) VALUES ('philip','mathew',750000,'01-jan-13 12.00AM','service');
INSERT into employee (first_name,last_name,salary,joining_date,department) VALUES ('testname1','123',650000,'01-jan-13 12.00AM','service');
INSERT into employee (first_name,last_name,salary,joining_date,department) VALUES ('testname2','Lname%',600000,'01-feb-13 12.00AM','insurance')

/* create table incentive */
CREATE TABLE incentive
(
    employee_ref_id int(200),
    incentive_date varchar(200),
    incentive_amount varchar(200),
    FOREIGN KEY incentive(employee_ref_id) REFERENCES employee(employee_id)
)

/* data insert into insentive table */
INSERT into incentive(employee_ref_id,incentive_date,incentive_amount) VALUES(1,'01-FEB-13',5000);
INSERT into incentive(employee_ref_id,incentive_date,incentive_amount) VALUES(2,'01-FEB-13',3000);
INSERT into incentive(employee_ref_id,incentive_date,incentive_amount) VALUES(3,'01-FEB-13',4000);
INSERT into incentive(employee_ref_id,incentive_date,incentive_amount) VALUES(1,'01-jan-13',4500);
INSERT into incentive(employee_ref_id,incentive_date,incentive_amount) VALUES(2,'01-jan-13',3500)


/* 1) Get First_Name from employee table using Tom name “Employee Name”. */
      ANS : select first_name FROM employee WHERE employee_id='4';
      

/* 2) Get FIRST_NAME, Joining Date, and Salary from employee table. */
      ANS : SELECT first_name,joining_date,salary FROM employee
      

/* 3) Get all employee details from the employee table order by First_Name 
      Ascending and Salary descending? */
      ANS : SELECT * FROM employee ORDER by first_name ASC;
            SELECT * FROM employee ORDER by salary DESC;

/* 4) Get employee details from employee table whose first name contains ‘J’. */
      ANS : SELECT * FROM employee WHERE first_name LIKE 'j%';

/* 5) Get department wise maximum salary from employee table order by salary
      ascending? */
      ANS : SELECT first_name ,department, MAX(salary) from employee group by department ORDER by salary ASC;

/* 6) Select first_name, incentive amount from employee and incentives table for 
      those employees who have incentives and incentive amount greater than 3000. */
      ANS : SELECT first_name,incentive_amount FROM incentive JOIN employee on incentive.employee_ref_id=employee.employee_id AND incentive_amount>3000;

/* 7) create view table */
CREATE TABLE view_table
(  
  Tfirst_name varchar(200),
  Tlast_name varchar(200),
  Tsalary int(200),
  Tjoining_date varchar(200),
  Tdepartment varchar(200),
  Date_time timestamp
)

/* create trigger */
DELIMITER $$
CREATE TRIGGER insert_triger AFTER insert on employee FOR EACH ROW
BEGIN
INSERT INTO view_table (Tfirst_name,Tlast_name,Tsalary,Tjoining_date,Tdepartment)VALUES(new.first_name,new.last_name,new.salary,new.joining_date,new.department);
END
$$


/* 8) Get employee details from employee table whose joining month is
      “January”. */
      ANS : SELECT * FROM `employee` WHERE joining_date LIKE '%jan%';


/* 9) Get department, total salary with respect to a department from employee
      table order by total salary descending. */
      ANS : SELECT SUM(salary), department FROM employee GROUP BY department ORDER BY `SUM(salary)` DESC;


/* 10) Select 2nd Highest salary from employee table. */
      ANS : SELECT MAX(SALARY) FROM Employee WHERE SALARY < (SELECT MAX(SALARY) FROM Employee);



