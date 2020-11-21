--Query to create Departments table
Create table Departments (
Dept_no varchar not null,
Dept_name varchar not null,
PRIMARY KEY (Dept_no)
);

--Query to create Titles table
Create table Titles (
Title_id varchar not null,
Title varchar not null,
PRIMARY KEY (Title_id)	
);

--Query to create Employees table
Create table Employees (
Emp_no Int not null,
Emp_title_id varchar not null,
DOB date, 
First_name varchar not null,
Last_name varchar not null,
Sex varchar not null,
Hire_date date,
PRIMARY KEY (Emp_no),
FOREIGN KEY(Emp_title_id) REFERENCES titles(title_id)
);

--Query to create Salaries table
Create table Salaries (
Emp_no Int not null,
Salary Int not null,
PRIMARY KEY (Emp_no),
FOREIGN KEY(Emp_no) REFERENCES Employees(Emp_no)
);

--Query to create Dept_emp table
Create table Dept_emp (
Emp_no Int not null,
Dept_no varchar not null, 
PRIMARY KEY(Emp_no,Dept_no), 
FOREIGN KEY(Emp_no) REFERENCES Employees(Emp_no),	
FOREIGN KEY(Dept_no) REFERENCES Departments(Dept_no)	
);	
	
--Query to create Dept_manager table
Create table Dept_manager (
Dept_no varchar not null, 
Emp_no Int not null,	
PRIMARY KEY(Dept_no, Emp_no), 
FOREIGN KEY(Dept_no) REFERENCES Departments(Dept_no),
FOREIGN KEY(Emp_no) REFERENCES Employees(Emp_no)	
);	


