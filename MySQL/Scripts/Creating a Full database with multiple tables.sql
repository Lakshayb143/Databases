CREATE DATABASE Apple;
USE Apple;




CREATE TABLE Employee(
emp_Id      	  		INT 		    NOT NULL   PRIMARY KEY,
emp_Name		  		VARCHAR(20)   	NOT NULL,
emp_Gender				VARCHAR(10)		NOT NULL,
emp_DOB    		  		DATE	        NOT NULL,
emp_PhoneNo		  		BIGINT			NOT NULL,
emp_Nationaliy    	    CHAR(12),
DepartmentCode          VARCHAR(5)		NOT NULL   REFERENCES Departments,
emp_Designation   		VARCHAR(25)	    NOT NULL,
emp_DateOfJoining 		DATE			NOT NULL,
emp_WorkingArea   		VARCHAR(15) 	NOT NULL
);

INSERT INTO Employee VALUES (100,'Lakshay','Male','1995-03-14',9911236716,'INDIA','T143','Executive secretary','2018-03-05','California');
INSERT INTO Employee VALUES (101,'Jeff George','Male','1994-05-14',9899546871,'UK','T143','SDE-1','2021-01-20','California');
INSERT INTO Employee VALUES (102,'Melinda Hamedani','Female','1997-03-02',9681436689,'CANADA','A128','Accountant-02','2019-09-08','California');
INSERT INTO Employee VALUES (103,'Joe Biden','Male','1996-11-09',9868480328,'AMERICA','T143','SDE-2','2020-04-28','California');
INSERT INTO Employee VALUES (104,'Navneet Ahuja','Male','1991-12-26',9968328726,'INDIA','T143','Junior executive','2029-05-13','California');
INSERT INTO Employee VALUES (105,'Ashok Kumar','Male','1994-04-21',9999781223,'INDIA','T143','SDE-2','2016-02-10','California');
INSERT INTO Employee VALUES (106,'Theresa Binney','Female','1995-07-13',9911236716,'JAPAN','A128','Cost accountant','2020-01-20','California');
INSERT INTO Employee VALUES (107,'Harsh Batra','Male','1995-07-13',9911236716,'INDIA','T143','SDE-3','2020-01-20','California');
INSERT INTO Employee VALUES (108,'Harshita kumari','Female','1999-08-26',9466789872,'INDIA','T143','SDE-1','2020-02-05','California');
INSERT INTO Employee VALUES (109,'Khushi Bhatia','Female','1992-06-18',9964728855,'INDIA','A128','Senior Executive','2018-03-05','California');
INSERT INTO Employee VALUES (110,'Warren de Clerc','Male','1998-03-18',9914899910,'AUSTRALIA','T143','SDE-2','2020-01-03','California');
INSERT INTO Employee VALUES (111,'Garvit Matta ','Male','1993-01-18',8779756733,'INDIA','A128','Accountant-3','2029-06-08','California');
INSERT INTO Employee VALUES (112,'Hazel Voysey','Male','1990-12-15',9795887932,'RUSSIA','C420','Clerk','2020-04-22','California');
INSERT INTO Employee VALUES (113,'Virge Goodrum','Male','1993-01-15',9799988616,'SAUDI ARABIA','C420','Clerk','2020-09-12','California');
INSERT INTO Employee VALUES (114,'Nisse Matterson','Female','1992-11-12',9848782755,'ENGLAND','C420','Clerk','2021-09-02','California');



CREATE TABLE Departments(
DepartmentCode					VARCHAR(5)			NOT NULL     PRIMARY KEY,
NameOfDepartment       			VARCHAR(30)			NOT NULL,
`HeadOfDepartment(emp_id)`        INT				NOT NULL


);
INSERT INTO Departments VALUES('A128','Finance_department',109);
INSERT INTO Departments VALUES
	('C420','Clerical_department',114),
    ('M169','Marketing_department',118),
    ('D786','Designing_department',124);
 
 
 
 
 
 CREATE TABLE Clients(
cl_Id			INT			  NOT NULL     PRIMARY KEY,
cl_Name			VARCHAR(15)       NOT NULL,
cl_DOB			DATE			  NOT NULL,
cl_PhoneNo      BIGINT    		  NOT NULL,
cl_Coutry		CHAR(10)		  NOT NULL,
cl_State		CHAR(18)		  NOT NULL
  

);

INSERT INTO Clients VALUES
				(1,'Dhruv Babbar','1999-07-14',9978534419,'INDIA','DELHI'),
                (2,'Steve Scott','1995-02-09',9948339815,'FRANCE','PARIS'),
                (3,'Anil Mendiratta','1998-03-23',99996872,'INDIA','MP'),
                (4,'Rakesh Yadav','1997-10-19',9978647055,'INDIA','KARNATKA'),
                (5,'Aditya Tyagi','1999-11-11',9368849980,'INDIA','UP'),
                (6,'Den Cranshaw','1993-10-21',9888789910,'USA','New York'),
                (7,'Krishna Bhatt','1999-06-04',9895691248,'INDIA','GUJRAT'),
                (8,'Raghav Joshi','1999-12-31',9866445468,'INDIA','GOA'),
                (9,'Ankit Kumar','1996-04-30',9978123499,'INDIA','TELANGANA'),
                (10,'David Harris','1999-01-20',9889780095,'AUSTRALIA','CANBERRA');
                
                
                
                
CREATE TABLE Payment_methods(
payment_method_id			INT				NOT NULL			PRIMARY KEY,
Name						VARCHAR(30) 	NOT NULL

);
INSERT INTO `payment_methods` VALUES (1,'Credit Card'),(2,'Debit Card');
INSERT INTO `payment_methods` VALUES (3,'Cash');
INSERT INTO `payment_methods` VALUES (4,'PayPal');




CREATE TABLE `payments` (
  `payment_id` 			INT 	     		NOT NULL 		PRIMARY KEY,
   cl_Id			    INT      			NOT NULL,
  `date` 				DATE 				NOT NULL,
  `amount` 				INT	 				NOT NULL,
  `payment_method` 		TINYINT 			NOT NULL
  );
INSERT INTO `payments` VALUES (1,5,'2021-03-12',81800,1);
INSERT INTO `payments` VALUES (2,1,'2021-05-03',745500,1);
INSERT INTO `payments` VALUES (3,3,'2020-08-11',300000,1);
INSERT INTO `payments` VALUES (4,7,'2020-03-26',87440,4);
INSERT INTO `payments` VALUES (5,9,'2021-06-15',803100,1);
INSERT INTO `payments` VALUES (6,4,'2020-09-15',68100,3);
INSERT INTO `payments` VALUES (7,5,'2020-11-08',320000,1);
