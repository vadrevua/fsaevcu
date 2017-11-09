--5
select d.department_id, d.department_name, e.salary, count(e.employee_id)
from employees e join departments d
on e.department_id = d.department_id
where e.salary > (select avg(salary) from employees)
and (select count(department_id) from employees) > 3;
