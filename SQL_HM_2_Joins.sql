--SQL HomeWork 2. Joins
--
--Подключится к 
--Host: 159.69.151.133
--Port: 5056
--DB: подключение к той таблице где делали DDL операции
--User: подключение к тем пользователем каким делали DDL операции
--Pass: 123
--
--Если для какого-то кейса надо сделать дополнительную таблицу, наполнить её данными, то делайте )

select * from employee_salary es 

select * from salary s 

select * from roles r 

select * from roles_employee re 

select *from employees e 



 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами. +
 
 select employee_name, monthly_salary from employee_salary es 
	join employees e on es.employee_id = e.id
	join salary s on es.salary_id = s.id;


 2. Вывести всех работников у которых ЗП меньше 2000.    +
 
select employee_name, monthly_salary from employees
	join employee_salary es  on employees.id = es.employee_id 
	join salary on es.salary_id  = salary.id 
    where monthly_salary < 2000;

   
 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.) +
   
select monthly_salary, employee_name from employee_salary es 
        left join employees e on es.employee_id = e.id 
	left join salary s on es.salary_id = s.id
   where employee_name is null;

 
 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.) +
 
 select monthly_salary, employee_name from employee_salary es  
	left join employees e on es.employee_id = e.id
	left join salary s on es.salary_id = s.id
   where employee_name is null and monthly_salary < 2000;
 
 
 5. Найти всех работников кому не начислена ЗП. +

select e.employee_name, s.monthly_salary from employees e 
      left join employee_salary es  on  e.id  = es.employee_id 
      left join salary s on s.id = es.salary_id 
where s.monthly_salary is null;


 6. Вывести всех работников с названиями их должности. +

 select employee_name, role_name from employees e
       join roles_employee re on e.id = re.employee_id 
       join roles r on re.role_id  = r.id;
	

 7. Вывести имена и должность только Java разработчиков. +
	
select  employee_name , role_name from employees e
      join roles_employee re on e.id = re.employee_id
      join roles r on re.role_id  = r.id
where role_name like '%Java developer%';


 8. Вывести имена и должность только Python разработчиков. +
 
 select employee_name , role_name from employees e
       join roles_employee re on e.id = re.employee_id
       join roles r on re.role_id  = r.id
 where role_name like '%Python developer%';
 

 9. Вывести имена и должность всех QA инженеров.           +

 select employee_name , role_name from employees e    
       join roles_employee re on e.id = re.employee_id
       join roles r on re.role_id  = r.id
 where role_name like '%QA enginee%';
 

 10. Вывести имена и должность ручных QA инженеров.     +
 
 select employee_name , role_name from employees e
       join roles_employee re on re.employee_id = e.id 
       join roles r on r.id = re.role_id 
 where role_name like '%Manual QA engineer%';
 

 11. Вывести имена и должность автоматизаторов QA   +
 
 select employee_name , role_name from employees e
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id 
where role_name like '%Automation QA engineer%';


 12. Вывести имена и зарплаты Junior специалистов    +
 
  select e.employee_name, s.monthly_salary from employee_salary es
join salary s on es.salary_id = s.id
join employees e on es.employee_id = e.id 
join roles_employee re on re.employee_id  = es.employee_id 
join roles r on re.role_id  = r.id 
where r.role_name like '%Junior%';

 
 13. Вывести имена и зарплаты Middle специалистов        +
 
 select e.employee_name, s.monthly_salary from employee_salary es 
join salary s on es.salary_id = s.id
join employees e on es.employee_id = e.id 
join roles_employee re on re.employee_id  = es.employee_id 
join roles r on re.role_id  = r.id 
where r.role_name like '%Middle%';
 

 14. Вывести имена и зарплаты Senior специалистов     +
 
 select e.employee_name, s.monthly_salary from employee_salary es 
join salary s on es.salary_id = s.id
join employees e on es.employee_id = e.id 
join roles_employee re on re.employee_id  = es.employee_id 
join roles r on re.role_id  = r.id
where r.role_name like '%Senior%';
 

 15. Вывести зарплаты Java разработчиков  +
 
 select s.monthly_salary , r.role_name from salary s   
 join employee_salary es on s.id = es.salary_id 
 join roles_employee re on es.employee_id = re.employee_id 
 join roles r on r.id = re.role_id 
 where role_name like '%Java developer%';
 
 
 16. Вывести зарплаты Python разработчиков   +
 
 select s.monthly_salary , r.role_name from salary s   
  join employee_salary es on s.id = es.salary_id 
  join roles_employee re on es.employee_id = re.employee_id 
  join roles r on r.id = re.role_id 
 where role_name like '%Python developer%';
 
 
 17. Вывести имена и зарплаты Junior Python разработчиков  +
 
 select e.employee_name, salary.monthly_salary, r.role_name, e.id  from employee_salary es ------ имена и зарплаты(убрать роль и ID) я
join salary on es.salary_id = salary.id
join employees e on es.employee_id = e.id 
join roles_employee re on re.employee_id  = es.employee_id 
join roles r on re.role_id  = r.id
 where role_name like '%Junior Python developer%';
 

 18. Вывести имена и зарплаты Middle JS разработчиков +
 
 select e.employee_name, salary.monthly_salary, r.role_name, e.id  from employee_salary es ------ имена и зарплаты(убрать роль и ID) я
join salary on es.salary_id = salary.id
join employees e on es.employee_id = e.id 
join roles_employee re on re.employee_id  = es.employee_id 
join roles r on re.role_id  = r.id
  where role_name like '%Middle JavaScript developer%';
 
 
 19. Вывести имена и зарплаты Senior Java разработчиков  +
 
 select e.employee_name, salary.monthly_salary, r.role_name, e.id  from employee_salary es  
 join salary on es.salary_id = salary.id
join employees e on es.employee_id = e.id 
join roles_employee re on re.employee_id  = es.employee_id 
join roles r on re.role_id  = r.id
  where role_name like '%Senior Java developer%';
 
 
 20. Вывести зарплаты Junior QA инженеров +
 
 select s.monthly_salary , r.role_name from salary s 
 join employee_salary es on es.salary_id  = s.id 
 join roles_employee re on re.employee_id = es.employee_id 
 join roles r on r.id = re.role_id 
 where role_name like '%Junior %QA engineer%';
 

 21. Вывести среднюю зарплату всех Junior специалистов   +
 
 select AVG(monthly_salary) from salary s 
  join employee_salary es on es.salary_id  = s.id 
 join roles_employee re on re.employee_id = es.employee_id 
 join roles r on r.id = re.role_id 
 where role_name like '%Junior%';
 

 22. Вывести сумму зарплат JS разработчиков   +
 
 select SUM(monthly_salary) from salary s 
 join employee_salary es on es.salary_id  = s.id 
 join roles_employee re on re.employee_id = es.employee_id 
 join roles r on r.id = re.role_id 
 where role_name like '%JavaScript developer%';
 

 23. Вывести минимальную ЗП QA инженеров +
 
 select MIN(monthly_salary) from salary s 
   join employee_salary es on es.salary_id  = s.id 
 join roles_employee re on re.employee_id = es.employee_id 
 join roles r on r.id = re.role_id 
 where role_name like '%QA engineer%';
 

 24. Вывести максимальную ЗП QA инженеров  +
 
 select MAX(monthly_salary) from salary s 
 join employee_salary es on es.salary_id  = s.id 
 join roles_employee re on re.employee_id = es.employee_id 
 join roles r on r.id = re.role_id 
  where role_name like '%QA engineer%';
 
 
 25. Вывести количество QA инженеров   +
 
select COUNT(role_id) from roles r 
 join roles_employee re on re.role_id = r.id 
where role_name like '%QA engineer%';
 

 26. Вывести количество Middle специалистов.  +
 
 select COUNT(role_id) from roles r 
 join roles_employee re on re.role_id = r.id 
 where role_name like '%Middle%';
 

 27. Вывести количество разработчиков   +
 
 select COUNT(role_id) from roles r 
 join roles_employee re on re.role_id = r.id 
 where role_name like '%developer%';
 

 28. Вывести фонд (сумму) зарплаты разработчиков. +
 
 select SUM(s.monthly_salary) from salary s 
 join employee_salary es on es.salary_id = s.id 
 join roles_employee re on re.employee_id = es.employee_id 
 join roles r on r.id = re.role_id 
 where role_name like '%developer%';
 

 29. Вывести имена, должности и ЗП всех специалистов по возрастанию +

 select e.employee_name, r.role_name, s.monthly_salary from employee_salary es 
 join employees e  on  es.employee_id  = e.id
 join salary s on es.salary_id  = s.id
 join roles_employee re on re.employee_id  = es.employee_id
 join roles r on r.id  = re.role_id
 order by s.monthly_salary;
 
  
 30. Вывести имена, должности и ЗП всех специалистов по возрастанию  специалистов у которых ЗП от 1700 до 2300  +
 
select e.employee_name, r.role_name, s.monthly_salary from employee_salary es 
 join employees e  on  es.employee_id  = e.id
 join salary s on es.salary_id  = s.id
 join roles_employee re on re.employee_id  = es.employee_id
 join roles r on r.id  = re.role_id
 where s.monthly_salary >= 1700 and s.monthly_salary <= 2300
 order by s.monthly_salary;

 
 31. Вывести имена, должности и ЗП всех специалистов по возрастанию  специалистов у которых ЗП меньше 2300   +
 
 select e.employee_name, r.role_name, s.monthly_salary from employee_salary es 
 join employees e  on  es.employee_id  = e.id
 join salary s on es.salary_id  = s.id
 join roles_employee re on re.employee_id  = es.employee_id
 join roles r on r.id  = re.role_id
 where s.monthly_salary < 2300
 order by s.monthly_salary;
 

 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000 +
 
 select e.employee_name, r.role_name, s.monthly_salary from employee_salary es 
 join employees e  on  es.employee_id  = e.id
 join salary s on es.salary_id  = s.id
 join roles_employee re on re.employee_id  = es.employee_id
 join roles r on r.id  = re.role_id
 where s.monthly_salary = 1100 or s.monthly_salary = 1500 or s.monthly_salary = 2000
 order by s.monthly_salary;
 
 
 select * from employee_salary es; 
 select * from roles r; 
 select * from employees e; 
 select * from roles_employee re; 
 select * from salary s; 
 

