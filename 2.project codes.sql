SELECT *
FROM department;

SELECT *
FROM employee;

--Employee data--
INSERT INTO Employee VALUES (101,'Ojas','Phansekar',to_date('14-APR-16',
'dd-MON-yyyy'),'New York City','New York',1);
INSERT INTO Employee VALUES (102,'Vrushali','Patil',to_date('21-JUN-18',
'dd-MON-yyyy'),'Boston','Massachusetts',2);
INSERT INTO Employee VALUES (103,'Pratik','Parija',to_date('13-SEP-19',
'dd-MON-yyyy'),'Chicago','Illinois',3);
INSERT INTO Employee VALUES (104,'Chetan','Mistry',to_date('12-APR-11',
'dd-MON-yyyy'),'Miami','Florida',4);
INSERT INTO Employee VALUES (105,'Anugraha','Varkey',to_date('16-AUG-17',
'dd-MON-yyyy'),'Atlanta','Georgia',5);
INSERT INTO Employee VALUES (106,'Rasagnya','Reddy',to_date('25-JUL-18',
'dd-MON-yyyy'),'San Mateo','California',6);
INSERT INTO Employee VALUES
(107,'Aishwarya','Boralkar',to_date('18-DEC-10', 'dd-MON-yyyy'),'San
Francisco','California',7);
INSERT INTO Employee VALUES (108,'Shantanu','Savant',to_date('27-NOV-15',
'dd-MON-yyyy'),'Seattle','Washington',8);
INSERT INTO Employee VALUES (109,'Kalpita','Malvankar',to_date('24-APR-16',
'dd-MON-yyyy'),'Boston','Massachusetts',8);
INSERT INTO Employee VALUES (110,'Saylee','Bhagat',to_date('21-MAY-14',
'dd-MON-yyyy'),'San Francisco','California',7);

ALTER TABLE employee
ADD COLUMN Department_Id INT

ALTER TABLE employee
ADD CONSTRAINT employee_department_fkey
      FOREIGN KEY (Department_Id)
      REFERENCES Department(Department_Id)
	  
-- inserting work location data
INSERT INTO Work_Location VALUES (71,'North',4,'New York City','New
York',101);
INSERT INTO Work_Location VALUES
(72,'North',4,'Boston','Massachusetts',102);
INSERT INTO Work_Location VALUES (73,'North',4,'Chicago','Illinois',103);
INSERT INTO Work_Location VALUES (74,'North',89,'Miami','Florida',104);
INSERT INTO Work_Location VALUES (75,'South',90,'Atlanta','Georgia',105);
INSERT INTO Work_Location VALUES (76,'South',100,'San
Mateo','California',106);
INSERT INTO Work_Location VALUES (77,'South',4,'San
Francisco','California',107);
INSERT INTO Work_Location VALUES (78,'South',2,'Seattle','Washington',108);
INSERT INTO Work_Location VALUES
(79,'South',25,'Alpharetta','Georgia',109);
INSERT INTO Work_Location VALUES (80,'South',20,'Keene','New
Hampshire',110);
INSERT INTO Work_Location VALUES (81,'South',22,'Hampton','New
Hampshire',109);

ALTER TABLE work_location
ADD COLUMN employee_id INT

ALTER TABLE work_location
ADD CONSTRAINT employee_location_fkey
		FOREIGN KEY (employee_id)
		REFERENCES employee(employee_id)

INSERT INTO Project VALUES (21,'Dev','Whatever');
INSERT INTO Project VALUES (22,'Prod','do something');
INSERT INTO Project VALUES (23,'Test','focus');
INSERT INTO Project VALUES (24,'Nothing','do nothing');
INSERT INTO Project VALUES (25,'Research','focus on everything');
INSERT INTO Project VALUES (26,'Next Steps','find some way out');

INSERT INTO AccountDetails VALUES (40,'Santander','S12344',101);
INSERT INTO AccountDetails VALUES (41,'Santander','S12345',102);
INSERT INTO AccountDetails VALUES (42,'Santander','S12346',103);
INSERT INTO AccountDetails VALUES (43,'Santander','S12347',104);
INSERT INTO AccountDetails VALUES (44,'Chase','C12344',105);
INSERT INTO AccountDetails VALUES (45,'Chase','C12345',106);
INSERT INTO AccountDetails VALUES (46,'Chase','C12347',107);
INSERT INTO AccountDetails VALUES (47,'Chase','C12334',108);
INSERT INTO AccountDetails VALUES (48,'BOFA','C12378',109);
INSERT INTO AccountDetails VALUES (49,'BOFA','C12390',110);

INSERT INTO Education VALUES (10,101,'MS',2017);
INSERT INTO Education VALUES (11,102,'MS',2019);
INSERT INTO Education VALUES (12,104,'MS',2011);
INSERT INTO Education VALUES (13,108,'MS',2015);
INSERT INTO Education VALUES (14,109,'Bachelor',2013);
INSERT INTO Education VALUES (15,107,'Bachelor',2008);
INSERT INTO Education VALUES (16,106,'Bachelor',2007);

INSERT INTO Leave VALUES (51,104,to_date('1-DEC-19', 'dd-MON-yyyy'));
INSERT INTO Leave VALUES (52,108,to_date('2-DEC-19', 'dd-MON-yyyy'));
INSERT INTO Leave VALUES (53,109,to_date('3-DEC-19', 'dd-MON-yyyy'));
INSERT INTO Leave VALUES (54,107,to_date('4-DEC-19', 'dd-MON-yyyy'));
INSERT INTO Leave VALUES (55,106,to_date('5-DEC-19', 'dd-MON-yyyy'));
INSERT INTO Leave VALUES (56,104,to_date('6-DEC-19', 'dd-MON-yyyy'));
INSERT INTO Leave VALUES (57,108,to_date('7-DEC-19', 'dd-MON-yyyy'));
INSERT INTO Leave VALUES (58,109,to_date('7-DEC-19', 'dd-MON-yyyy'));
INSERT INTO Leave VALUES (59,107,to_date('8-DEC-19', 'dd-MON-yyyy'));
INSERT INTO Leave VALUES (60,106,to_date('9-DEC-19', 'dd-MON-yyyy'));

INSERT INTO Attendance VALUES (90,10);
INSERT INTO Attendance VALUES (91,20);
INSERT INTO Attendance VALUES (92,30);
INSERT INTO Attendance VALUES (93,40);
INSERT INTO Attendance VALUES (94,45);
INSERT INTO Attendance VALUES (95,56);
INSERT INTO Attendance VALUES (96,58);

INSERT INTO Employee_Attendance VALUES (101,90);
INSERT INTO Employee_Attendance VALUES (102,91);
INSERT INTO Employee_Attendance VALUES (103,92);
INSERT INTO Employee_Attendance VALUES (104,93);
INSERT INTO Employee_Attendance VALUES (105,94);
INSERT INTO Employee_Attendance VALUES (106,95);
INSERT INTO Employee_Attendance VALUES (107,96);
INSERT INTO Employee_Attendance VALUES (108,91);
INSERT INTO Employee_Attendance VALUES (109,92);
INSERT INTO Employee_Attendance VALUES (110,93);

INSERT INTO DepartmentProject VALUES (1,21);
INSERT INTO DepartmentProject VALUES (2,22);
INSERT INTO DepartmentProject VALUES (3,23);
INSERT INTO DepartmentProject VALUES (4,24);
INSERT INTO DepartmentProject VALUES (5,25);
INSERT INTO DepartmentProject VALUES (6,26);
INSERT INTO DepartmentProject VALUES (7,21);
INSERT INTO DepartmentProject VALUES (8,24);

INSERT INTO Salary VALUES (1,57600,30,200,1000,40);
INSERT INTO Salary VALUES (2,76800,40,300,1300,41);
INSERT INTO Salary VALUES (3,96000,50,400,1500,42);
INSERT INTO Salary VALUES (4,115200,60,500,1700,43);
INSERT INTO Salary VALUES (5,57600,30,200,1000,44);
INSERT INTO Salary VALUES (6,76800,40,300,1300,45);
INSERT INTO Salary VALUES (7,96000,50,400,1500,46);
INSERT INTO Salary VALUES (8,115200,60,500,1700,47);
INSERT INTO Salary VALUES (9,57600,30,200,1000,48);
INSERT INTO Salary VALUES (10,76800,40,300,1300,49);

INSERT INTO Employee VALUES (110,'Saylee','Bhagat',to_date('21-MAY-14',
'dd-MON-yyyy'),'San Francisco','California',7);


INSERT INTO employee VALUES (111, 'Priyanka', 'Jonas',to_date('14-NOV-16', 
'dd-MON-yyyy'), 'New York City', 'New York' ,1);
INSERT INTO employee VALUES (112, 'John', 'Vincent', to_date('21-JUN-18',
'dd-MON-yyyy'), 'Boston', 'Massachusetts', 2);
INSERT INTO employee VALUES (113, 'Pratik', 'Panhale',to_date('13-SEP-19',
'dd-MON-yyyy') , 'Chicago', 'Illinois', 3)

SELECT * 
FROM employee;

SELECT * 
FROM salary;

SELECT * 
FROM accountdetails;

-- STEP 3: Query Writing
/* 1. Display the gross salary and hourly pay of each employee, with the employee's full name
concatenated into one column. Make sure the results are ordered alphabetically by
employee name. */
SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name,
		s.gross_salary,
		s.hourly_pay
FROM employee AS e
LEFT JOIN accountdetails AS ad
ON e.employee_id = ad.employee_id
LEFT JOIN salary as s
ON ad.account_id = s.account_id
ORDER BY full_name;

/* 2. Display the total number of hours worked for each employee, with the employee's full
name concatenated into one column. Arrange the results in descending order based on
the number of hours worked. */

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, 
		a.hours_worked
FROM employee AS e
LEFT JOIN employee_attendance AS ea
ON e.employee_id = ea.employee_id
LEFT JOIN attendance as a
ON ea.attendance_id = a.attendance_id
ORDER BY a.hours_worked DESC;

/* 3. Retrieve a list of distinct states and the sum of employees in each state, but only for
states where the total number of employees exceeds 5. Ensure that the results are ordered alphabetically by state.
*/
SELECT DISTINCT(state) AS distinct_state,
	 SUM(number_of_employees) AS total_employees
FROM work_location
GROUP BY distinct_state
HAVING SUM(number_of_employees)> 5
ORDER BY distinct_state;

SELECT DISTINCT(e.state) AS distinct_state,
	 SUM(wl.number_of_employees) AS total_employees
FROM work_location AS wl
JOIN employee AS e
ON wl.employee_id= e.employee_id 
GROUP BY distinct_state
HAVING SUM(wl.number_of_employees)> 5
ORDER BY distinct_state;


-- Personal Analysis OR Data Exploration --
SELECT *
FROM salary;

SELECT * 
FROM project;

SELECT e.*,  
FROM employee AS e
JOIN project AS p
ON project_id
JOIN salary AS s
ON s.account_id = ad.account_id
JOIN accountdetails AS ad
ON ;

/* Displaying the top 2 and bottom 2 earners by department_name, to determine what is being valued the most in the company
*/
SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name,
		s.gross_salary,
		s.hourly_pay,
		d.department_name
FROM employee AS e
LEFT JOIN accountdetails AS ad
ON e.employee_id = ad.employee_id
LEFT JOIN salary as s
ON ad.account_id = s.account_id
JOIN department AS d
ON e.department_id = d.department_id
ORDER BY s.gross_salary DESC;

/* To determine which were the most popular employees to go on leave and what department they were in
within a 12 period date in december*/
SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name,
		 e.employee_id, count(e.employee_id), d.department_name
FROM employee AS e
JOIN leave AS l
ON e.employee_id = l.employee_id
JOIN department AS d
ON e.department_id = d.department_id
GROUP BY e.employee_id, full_name, d.department_name
HAVING count(e.employee_id) > 1;

-- the 2 employees in the quality control went on leave within the short period
-- maybe the christmas period is their downtime, with further analysis we should be able to find that information out 
SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name,
		 e.employee_id, count(e.employee_id), d.department_name, p.project_name, p.project_description
FROM employee AS e
JOIN leave AS l
ON e.employee_id = l.employee_id
JOIN department AS d
ON e.department_id = d.department_id
JOIN departmentproject AS dp
ON d.department_id = dp.department_id
JOIN project AS p
ON dp.project_id = p.project_id
GROUP BY e.employee_id, full_name, d.department_name, p.project_name,  p.project_description
HAVING count(e.employee_id) > 1;

-- with further analysis, was able to find out that employees in quality control were scheduled on "Nothing" project, so might exlain why they are on leave


/* to check for education background for employees in different department and if that affects any ppay
*/
SELECT CONCAT(em.first_name, ' ', em.last_name) AS full_name, ed.degree, d.department_name, s.gross_salary
FROM employee AS em
LEFT JOIN education AS ed
ON em.employee_id = ed.employee_id
LEFT JOIN department as d
ON em.department_id = d.department_id
LEFT JOIN accountdetails AS ad
ON em.employee_id = ad.employee_id
JOIN salary as s
ON ad.account_id = s.account_id
ORDER BY s.gross_salary DESC,
	d.department_name
;

/* Limitation includes
- we do not know how long they have been in the company, or industry, or the type of bachelor they all possess

*/
SELECT p.*
FROM project AS p
JOIN departmentproject AS dp
ON p.project_id = dp.project_id
JOIN department AS d
ON dp.department_id = d.department_id




