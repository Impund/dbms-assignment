
name: impundu gatera brazia
id: 29057
assignment: dbms

1. select concat(first_name, ' ', last_name) as full_name from employees;
2. select lower(first_name) as first_name, lower(last_name) as last_name from employees;
3. select substring(first_name, 1, 3) as short_first_name from employees;
4. select replace(email, '@company.com', '@org.com') as updated_email from employees;
5. select trim('   hello sql   ') as trimmed;
6. select length(concat(first_name, ' ', last_name)) as name_length from employees;
7. select instr(email, '@') as at_position from employees;
8. select case when gender = 'male' then concat('mr. ', first_name, ' ', last_name) else concat('ms. ', first_name, ' ', last_name) end as titled_name from employees;
9. select upper(project_name) as upper_project from projects;
10. select replace(project_name, '-', '') as cleaned_project from projects;
11. select concat('emp: ', first_name, ' ', last_name, ' (', department_name, ')') as employee_label from employees join departments using(department_id);
12. select email, length(email) as email_length from employees;
13. select substring_index(email, '@', 1) as username from employees;
14. select concat(upper(last_name), ', ', first_name) as formatted_name from employees;
15. select concat(first_name, ' ', last_name, case when p.end_date is null then ' (active)' else '' end) as name_status from employees e join employee_projects ep on e.employee_id = ep.employee_id join projects p on ep.project_id = p.project_id;

16. select round(salary, 0) as rounded_salary from employees;
17. select * from employees where mod(salary, 2) = 0;
18. select project_name, datediff(end_date, start_date) as duration_days from projects;
19. select abs(e1.salary - e2.salary) as salary_difference from employees e1, employees e2 where e1.employee_id = 101 and e2.employee_id = 102;
20. select salary, salary * power(1.1, 1) as increased_salary from employees;
21. select rand() as random_number;
22. select salary, ceil(salary) as ceiled, floor(salary) as floored from employees;
23. select phone, length(phone) as digits from employees;
24. select salary, case when salary >= 5000 then 'high' when salary >= 3000 then 'medium' else 'low' end as category from employees;
25. select salary, length(floor(salary)) as digit_count from employees;

26. select current_date;
27. select first_name, datediff(current_date, hire_date) as days_worked from employees;
28. select * from employees where year(hire_date) = year(current_date);
29. select now();
30. select hire_date, year(hire_date) as year, month(hire_date) as month, day(hire_date) as day from employees;
31. select * from employees where hire_date < '2020-01-01';
32. select * from projects where end_date between curdate() - interval 30 day and curdate();
33. select project_name, datediff(end_date, start_date) as total_days from projects;
34. select concat(monthname('2025-07-23'), ' ', day('2025-07-23'), ', ', year('2025-07-23')) as formatted_date;
35. select project_name, case when end_date is null then 'ongoing' else 'completed' end as status from projects;

36. select salary, case when salary >= 5000 then 'high' when salary >= 3000 then 'medium' else 'low' end as label from employees;
37. select coalesce(email, 'no email') as email_status from employees;
38. select first_name, case when hire_date < '2015-01-01' then 'veteran' else 'new' end as status from employees;
39. select coalesce(salary, 3000) as safe_salary from employees;
40. select department_name, case when department_name = 'information technology' then 'it' when department_name = 'human resources' then 'hr' else 'other' end as dept_type from departments;
41. select e.first_name, case when ep.project_id is null then 'unassigned' else 'assigned' end as assignment from employees e left join employee_projects ep on e.employee_id = ep.employee_id;
42. select salary, case when salary >= 6000 then '30%' when salary >= 4000 then '20%' else '10%' end as tax_band from employees;
43. select project_name, case when datediff(end_date, start_date) < 100 then 'short-term' when datediff(end_date, start_date) between 100 and 300 then 'mid-term' else 'long-term' end as project_duration from projects where end_date is not null;
44. select employee_id, case when mod(employee_id, 2) = 0 then 'even' else 'odd' end as id_type from employees;
45. select coalesce(concat(first_name, ' ', last_name), 'unknown') as full_name from employees;
46. select concat(first_name, last_name) as full_name, case when length(concat(first_name, last_name)) > 10 then 'long name' else 'normal' end as name_label from employees;
47. select email, case when upper(email) like '%TEST%' then 'dummy' else 'real' end as email_type from employees;
48. select first_name, hire_date, case when year(hire_date) <= 2014 then 'senior' when year(hire_date) <= 2018 then 'mid-level' else 'junior' end as seniority from employees;
49. select salary, case when salary < 3000 then 'raise 20%' when salary < 5000 then 'raise 10%' else 'raise 5%' end as increment_plan from employees;
50. select first_name, hire_date, case when month(hire_date) = month(curdate()) then 'anniversary month' else 'not yet' end as anniversary_check from employees;
