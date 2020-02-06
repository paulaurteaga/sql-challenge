-- List the following details of each employee: employee number, last name, first name, gender, and salary.
select e.emp_no,e.last_name,e.first_name,e.gender, s.salary from employees e
join salaries s on e.emp_no=s.emp_no
--List employees who were hired in 1986.
select emp_no,first_name,last_name,hire_date from employees 
where hire_date between '1986-01-01' and '1986-12-31'
--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates
select d.dept_no,ds.dept_name,d.emp_no,e.first_name,e.last_name,d.from_date,d.to_date 
from dept_manager d join employees e on e.emp_no=d.emp_no join departments ds on ds.dept_no=d.dept_no
--List the department of each employee with the following information: employee number, last name, first name, and department name.
select e.emp_no,e.first_name,e.last_name,ds.dept_name 
from employees e join dept_emp d on d.emp_no=e.emp_no join departments ds on ds.dept_no=d.dept_no
--List all employees whose first name is "Hercules" and last names begin with "B."
select * from employees where first_name='Hercules' and last_name like'B%'
-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
select e.emp_no,e.last_name,e.first_name,ds.dept_name 
from employees e join dept_emp d on e.emp_no=d.emp_no join departments ds on ds.dept_no=d.dept_no 
where ds.dept_name='Sales'
--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select e.emp_no,e.last_name,e.first_name,ds.dept_name 
from employees e join dept_emp d on e.emp_no=d.emp_no join departments ds on ds.dept_no=d.dept_no 
where ds.dept_name='Sales' or ds.dept_name='Development'
--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name,count(emp_no) as "count of repeated last names" from employees
group by last_name order by "count of repeated last names" DESC
