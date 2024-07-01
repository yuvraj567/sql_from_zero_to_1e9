use clause;
select * from employee;

-- group by clause
select department, avg(salary) as avg_sal
from employee
group by department;

-- having clause
select department, avg(salary) as avg_sal
from employee
group by department
having avg_sal > 1000;

