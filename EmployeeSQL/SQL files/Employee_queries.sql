/* Data Analysis queries*/

/*1. List the following details of each employee: employee number, last name, first name, sex, and salary.*/

Select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees as e
inner join salaries as s 
on e.emp_no = s.emp_no;

/*2. List first name, last name, and hire date for employees who were hired in 1986.*/

Select first_name, last_name, hire_date
from employees
where hire_date between '1986-01-01' and '1986-12-31';

/*3. List the manager of each department with the following information: 
department number, department name, the manager's employee number, last name, first name.*/

select mn.dept_no, dp.dept_name, e.emp_no, e.last_name, e.first_name
from employees as e
inner join dept_manager as mn 
on e.emp_no = mn.emp_no
inner join departments as dp
on mn.dept_no = dp.dept_no;

/*4. List the department of each employee with the following information: employee number, last name, first name, and department name.*/

select e.emp_no, e.last_name, e.first_name, dp.dept_name 
from employees as e
inner join dept_emp as d 
on e.emp_no = d.emp_no
inner join departments as dp
on d.dept_no = dp.dept_no;

/*5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."*/

Select first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name like 'B%';

/*6. List all employees in the Sales department, including their employee number, last name, first name, and department name.*/

select e.emp_no, e.last_name, e.first_name, dp.dept_name 
from employees as e
inner join dept_emp as d 
on e.emp_no = d.emp_no
inner join departments as dp
on d.dept_no = dp.dept_no
where d.dept_no = 'd007';

/*7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.*/

select e.emp_no, e.last_name, e.first_name, dp.dept_name 
from employees as e
inner join dept_emp as d 
on e.emp_no = d.emp_no
inner join departments as dp
on d.dept_no = dp.dept_no
where d.dept_no = 'd007' or d.dept_no = 'd005';

/*8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.*/

select last_name ,count(last_name) from employees
group by last_name 
order by last_name desc;