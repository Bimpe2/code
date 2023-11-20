-- Employee
CREATE TABLE Employee(
  Employee_Id NUMERIC(6) CONSTRAINT EMPLOYEE_PK PRIMARY KEY,
  First_Name VARCHAR(25),
  Last_Name VARCHAR(25),
  Hire_Date DATE,
  City VARCHAR(25),
  State VARCHAR(25)
  -- CONSTRAINT EMPLOYEE_PK PRIMARY KEY (Employee_Id)
);

-------------------------------------------------
 -- Department
 -------------------------------------------------
CREATE TABLE Department(
  Department_Id NUMERIC CONSTRAINT DEPARTMENT_PK PRIMARY KEY,
  Department_Name VARCHAR(30)
-- CONSTRAINT DEPARTMENT_PK PRIMARY KEY (Department_Id)
  );
  
-------------------------------------------------
  -- Salary
  -------------------------------------------------
  CREATE TABLE Salary(
  Salary_Id NUMERIC CONSTRAINT SALARY_PK PRIMARY KEY,
  Gross_Salary NUMERIC,
  Hourly_Pay NUMERIC,
  State_Tax NUMERIC,
  Federal_Tax NUMERIC,
  Account_Id NUMERIC,
  -- CONSTRAINT SALARY_PK PRIMARY KEY (Salary_Id)
  CONSTRAINT Account_Id
        FOREIGN KEY (Account_Id)
        REFERENCES ACCOUNTDETAILS(Account_Id)
  );
  
-------------------------------------------------
-- DepartmentProject Bridge
-------------------------------------------------
CREATE TABLE DepartmentProject(
Department_Id NUMERIC,
Project_Id NUMERIC,
CONSTRAINT DEPTPROJECT_PK PRIMARY KEY (Department_Id,Project_Id),
FOREIGN KEY (Department_Id)
      REFERENCES Department(Department_Id),
FOREIGN KEY (Project_Id)
      REFERENCES Project(Project_Id)
);
--------------------------------------------------
-- Project
--------------------------------------------------
CREATE TABLE Project(
Project_Id NUMERIC,
Project_Name VARCHAR(50),
Project_Description VARCHAR(50),
CONSTRAINT Project_PK PRIMARY KEY (Project_Id)
);
---------------------------------------------------
-- AccountDetails
---------------------------------------------------
CREATE TABLE AccountDetails(
Account_Id NUMERIC,
Bank_Name VARCHAR(50),
Account_Number VARCHAR(50),
Employee_Id NUMERIC,
CONSTRAINT Account_PK PRIMARY KEY (Account_Id),
FOREIGN KEY (Employee_Id)
      REFERENCES Employee(Employee_Id)
);

---------------------------------------------------
-- Education
---------------------------------------------------
CREATE TABLE Education(
Education_Id NUMERIC,
Employee_Id NUMERIC,
Degree VARCHAR(30),
 Graduation_Year NUMERIC(4),
 CONSTRAINT Location_PK PRIMARY KEY (Education_Id),
 FOREIGN KEY (Employee_Id)
       REFERENCES Employee(Employee_Id)
 );
 ---------------------------------------------------
 -- Leave
 ---------------------------------------------------
 CREATE TABLE Leave(
 Leave_Id NUMERIC,
 Employee_Id NUMERIC,
 Leave_date DATE,
 CONSTRAINT Leave_PK PRIMARY KEY (Leave_Id),
 FOREIGN KEY (Employee_Id)
       REFERENCES Employee(Employee_Id)
 );
----------------------------------------------------
-- EmployeeAttendance Bridge
----------------------------------------------------
 CREATE TABLE Employee_Attendance(
 Employee_Id NUMERIC,
 Attendance_Id NUMERIC,
 CONSTRAINT DEPARTMENTPROJECT_PK PRIMARY KEY (Employee_Id,Attendance_Id),
 FOREIGN KEY (Employee_Id)
       REFERENCES Employee(Employee_Id),
 FOREIGN KEY (Attendance_Id)
       REFERENCES Attendance(Attendance_Id)
 );
 ----------------------------------------------------
 -- Attendance
 ----------------------------------------------------
 CREATE TABLE Attendance(
 Attendance_Id NUMERIC,
 Hours_Worked NUMERIC,
 CONSTRAINT Attendance_PK PRIMARY KEY (Attendance_Id)
 );
 
 ----------------------------------------------------
 -- WorkLocation
 ----------------------------------------------------
CREATE TABLE Work_Location(
Location_Id NUMERIC,
Location VARCHAR(25),
Number_Of_Employees NUMERIC,
City VARCHAR(25),
State VARCHAR(25),
CONSTRAINT Loc_PK PRIMARY KEY (Location_Id)
);


-- Step 2 --
-- Department --
INSERT INTO Department VALUES (1,'Human Resources');
INSERT INTO Department VALUES (2,'Software Development');
INSERT INTO Department VALUES (3,'Data Analysis');
INSERT INTO Department VALUES (4,'Data Science');
INSERT INTO Department VALUES (5,'Business Intelligence');
INSERT INTO Department VALUES (6,'Data Engineering');
INSERT INTO Department VALUES (7,'Manufacturing');
INSERT INTO Department VALUES (8,'Quality Control');
