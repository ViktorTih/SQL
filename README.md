# SQL
SQL
SQL_DDL
Первая часть.

Таблица employees


1.	Создать таблицу employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null

create table employees(
id serial primary key,
employee_name varchar(50) not null);

===========================================

2.	Наполнить таблицу employee 70 строками.

insert into employees (employee_name)
values  ('Carson'),
        ('Liam'),
        ('Mason'),
  ('Jacob'),
  ('William'),
  ('Ethan'),
  ('James'),
  ('Alexander'),
  ('Michael'),
  ('Benjamin'),
  ('Elijah'),
  ('Daniel'),
  ('Aiden'),
  ('Logan'),
  ('Matthew'),
  ('Lucas'),
  ('Jackson'),
  ('David'),
  ('Oliver'),
  ('Jayden'),
  ('Joseph'),
  ('Gabriel'),
  ('Samuel'),
  ('Carter'),
  ('Anthony'),
  ('John'),
  ('Dylan'),
  ('Luke'),
  ('Henry'),
  ('Andrew'),
  ('Isaac'),
  ('Christopher'),
  ('Joshua'),
  ('Wyatt'),
  ('Sebastian'),
  ('Emma'),
  ('Olivia'),
  ('Sophia'),
  ('Ava'),
  ('Isabella'),
  ('Mia'),
  ('Abigail'),
  ('Emily'),
  ('Charlotte'),
  ('Harper'),
  ('Madison'),
  ('Amelia'),
  ('Elizabeth'),
  ('Sofia'),
  ('Evelyn'),
  ('Avery'),
  ('Chloe'),
  ('Ella'),
  ('Grace'),
  ('Victoria'),
  ('Aubrey'),
  ('Scarlett'),
  ('Zoey'),
  ('Addison'),
  ('Lily'),
  ('Lillian'),
  ('Natalie'),
  ('Hannah'),
  ('Aria'),
  ('Layla'),
  ('Brooklyn'),
  ('Alexa'),
  ('Zoe'),
  ('Penelope'),
  ('Riley');

======================================
Таблица salary


3.	Создать таблицу salary
- id. Serial  primary key,
- monthly_salary. Int, not null
             
 create table salary(
id serial primary key,
monthly_salary Int not null
);

=========================================

4.	Наполнить таблицу salary 15 строками:
- 1000
- 1100
- 1200
- 1300
- 1400
- 1500
- 1600
- 1700
- 1800
- 1900
- 2000
- 2100
- 2200
- 2300
- 2400
- 2500


insert into salary(monthly_salary)
values (1000),
       (1100),
       (1200),
       (1300),
       (1400),
       (1500),
       (1600),
       (1700),
       (1800),
       (1900),
       (2000),
       (2100),
       (2200),
       (2300),
       (2400),
       (2500);

select * from salary;


=======================================================
Таблица employee_salary


5.	Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null


create table employee_salary(
id serial primary key,
employee_id int not null unique,
salary_id int not null
);

select *from employee_salary;




6.	Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id

insert into employee_salary(employee_id, salary_id)
values (1, 2),
       (2, 3),
       (3, 4),
       (4, 5),
       (5, 6),
       (6, 7),
       (7, 8),
       (8, 9),
       (9, 10),
       (10, 11),
       (11, 12),
       (12, 13),
       (13, 14),
       (14, 15), 
       (15, 16),
       (16, 1),
       (17, 2),
       (18, 3),
       (19, 4),
       (20,5),
       (21, 6),
       (22, 7),
       (23, 8),
       (24, 9),
       (25, 10),
       (26, 11),
       (27, 12),
       (28, 13),
       (29, 14),
       (30, 15),
       (71, 16),
       (72, 2),
       (73, 3),
       (74, 4), 
       (75, 5),
       (76, 6),
       (77, 7),
       (78, 8),
       (79, 9),
       (80, 10);


select * from employee_salary;

=====================================================
Таблица roles

7.	Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique

create table roles(
id serial primary key,
role_name int not null unique
);

select * from roles;

===============================================================


8.	Поменять тип столба role_name с int на varchar(30)

alter table roles
alter column role_name type varchar(30);

===============================================================

9.	Наполнить таблицу roles 20 строками:

insert into roles (role_name)
values ('Junior Python developer'),
        ('Middle Python developer'),
        ('Senior Python developer'),
        ('Junior Java developer'),
        ('Middle Java developer'),
        ('Senior Java developer'),
        ('Junior JavaScript developer'),
        ('Middle JavaScript developer'),
        ('Senior JavaScript developer'),
        ('Junior Manual QA engineer'),
        ('Middle Manual QA engineer'),
        ('Senior Manual QA engineer'),
        ('Project Manager'),
        ('Designer'),
        ('HR'),
        ('CEO'),
        ('Sales manager'),
        ('Junior Automation QA engineer'),
        ('Middle Automation QA engineer'),
        ('Senior Automation QA engineer');

================================================================
Таблица roles_employee


10.	Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)


create table roles_employee(
id serial primary key,
employee_id int not null unique,
role_id int not null,
foreign key (employee_id) references employees(id),
foreign key (role_id) references roles(id)
);


===============================================================

11.	Наполнить таблицу roles_employee 40 строками:

insert into roles_employee (employee_id, role_id)
values (22,13),
(61,6),
(41,9),
(51,19),
(65,14),
(57,8),
(11,16),
(48,18),
(20,6),
(42,5),
(47,8),
(5,7),
(31,14),
(56,4),
(25,13),
(36,16),
(43,3),
(63,10),
(16,8),
(4,17),
(33,2),
(37,20),
(14,9),
(67,3),
(10,19),
(39,10),
(3,12),
(62,10),
(55,16),
(12,15),
(26,12),
(17,14),
(49,7),
(23,8),
(6,8),
(24, 4),
(70, 6),
(66, 3),
(28, 11),
(8, 19);


