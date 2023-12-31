
-- 1. List the empolyee number, last name, first na,e, sex and salary of each employee.
select e.emp_no, e.last_name, e.first_name, s.salary 
from employees e 
join salaries s 
on e.emp_no = s.emp_no;

-- 2. List the first name, last name, and hire date for the employees who were hired in 1986
select e.first_name, e.last_name, e.hire_date 
from employees e
where e.hire_date between '1986-1-1' and '1986-12-31';

-- 3. List the manager of each department along with their department number, department name, employee number, last name, and first namespace 
select dm.dept_no , d.dept_name , e.emp_no , e.last_name , e.first_name 
from dept_manager dm 
join employees e 
on dm.emp_no = e.emp_no 
join departments d 
on dm.dept_no = d.dept_no;

-- 4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
select e.emp_no  , e.last_name , e.first_name , d.dept_name 
from employees e 
join dept_emp de 
on e.emp_no = de.emp_no
join departments d 
on de.dept_no = d.dept_no;

-- 5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
select e.first_name , e.last_name , e.sex
from employees e 
where e.first_name = 'Hercules' and e.last_name like 'B%';

--6. List each employee in the Sales department, including their employee number, last name, and first name.
select e.emp_no , e.last_name , e.first_name 
from employees e 
join dept_emp de 
on e.emp_no = de.emp_no 
join departments d 
on d.dept_no = de.dept_no 
where d.dept_name = 'Sales';

--7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
select e.emp_no , e.last_name , e.first_name, d.dept_name  
from employees e 
join dept_emp de 
on e.emp_no = de.emp_no 
join departments d 
on de.dept_no = d.dept_no  
where d.dept_name = 'Sales' or d.dept_name = 'Development';

-- 8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
select e.last_name, count(emp_no) as same_last_name_count
from employees e 
group by last_name 
order by same_last_name_count desc;



