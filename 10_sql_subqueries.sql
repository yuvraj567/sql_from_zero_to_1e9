use clause;
select * from employee;

-- select employee who is having salary greater than minimum salary
-- min salary
select min(salary)
from employee;

-- salry > min_salary
select name, salary
from employee
where salary > (select min(salary)
from employee);

-- select employee who is having age equal to minimum age
-- min age
select min(age) from employee;

-- find employee having min age
select name, age
from employee
where age = (select min(age) from employee);

-- select employee who is having age greater than minimum age
-- min age
select min(age) as min_age from employee;

-- all emp age > min_age
select emp.name, emp.age 
from employee emp,(select min(age) as min_age 
from employee) as min_age_query
where emp.age > min_age_query.min_age;

-- print the employee with the average age and age of employees
-- find the average age
select avg(age) from employee;

-- print the employee age and average age
select (select avg(age) from employee) as avg_age, 
age from employee;