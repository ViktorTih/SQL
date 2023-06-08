Create table students(
id serial primary key,
name_stud varchar(30) not null,
email_stud varchar(50) unique not null,
password_stud varchar (50) not null,
 Created_on TIMESTAMP 
);

select * from students;

insert into students(name_stud, email_stud, password_stud, Created_on)
values ('Michael_McCarthy', 'o@outlook.com', 'h88clg',now()),
('Kevin Parker', 'hr6zdl@yandex.ru', 'n8w1hl',now()),
('Katrina Figueroa', 'kaft93x@outlook.com', '46eh0e',now()),
('Melissa Becker', 'dcu@yandex.ru', 'yb0lgj',now() ),
('Judith Thompson', '19dn@outlook.com', 'w08w97',now()),
('Kimberly Garrett','pa5h@mail.ru', '6kexp0',now()),
('Lisa Hill', '281av0@gmail.com', 'rbqggm',now()),
('Elaine Oliver', '8edmfh@outlook.com', 'vyj711',now()),
('Andrea Alexander', 'sfn13i@mail.ru','7nt2vn',now()),
('Diana Fox', 'g0orc3x1@outlook.com','rkvcbj',now());



insert into students(name_stud, email_stud, password_stud, Created_on)
values ('Thomas Green', '1o@outlook.com', 'h81clg',now()),
('Ashley Cannon', '2o@outlook.com', 'h82clg',now()),
('Mark Brown', '3o@outlook.com', 'h83clg',now()),
('Maureen Smith', '4o@outlook.com', 'h84clg',now()),
('Monica Chambers', '5o@outlook.com', 'h85clg',now()),
('Ben Haynes', '6o@outlook.com', 'h86clg',now())


insert into students(name_stud, email_stud, password_stud, Created_on)
values ('Brenda Peterson', '1o@out1look.com', 'h51clg',now()),
       ('Ella Cole', '1o@out2look.com', 'h61clg',now()),
       ('Dorothy Taylor', '1o@out3look.com', 'h71clg',now()),
       ('Juan Evans', '1o@out4look.com', 'h41clg',now()),
       ('Betty Mitchell', '1o@out5look.com', 'h31clg',now()),
       ('Ricardo McDaniel', '1o@out6look.com', 'h21clg',now());
       
       
--  1. Вывести все поля и все строки.
  
  select * from students;
  
 2. Вывести всех студентов в таблице
 
-- 3. Вывести только Id пользователей
 
  select id from students;
 
-- // 4. Вывести только имя пользователей/
 
 select name_stud from students;

-- 5. Вывести только email пользователей
 
 select email_stud from students;
 
 6. Вывести имя и email пользователей
 
 select name_stud,email_stud from students;
 
-- 7. Вывести id, имя, email и дату создания пользователей

select id, name_stud, email_stud, Created_on from students;

 8. Вывести пользователей где password 12333
 
 select * from students
where password_stud = '%12333%';
 
 9. Вывести пользователей которые были созданы 2021-03-26 00:00:00
 
 select * from students
where Created_on = '2021-03-26 00:00:00';
 
 10. Вывести пользователей где в имени есть слово Анна
 
 select * from students
where name_stud like '%Анна%';
 
 11. Вывести пользователей где в имени в конце есть 8
 
select * from students
where name_stud like '%8';
 
 12. Вывести пользователей где в имени в есть буква а
 
 select * from students
where name_stud like '%a%';
 
 13. Вывести пользователей которые были созданы 2021-07-12 00:00:00
 
 select * from students
 where Created_on = '2021-07-12 00:00:00';
 
 
 14. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313
 
 select * from students
 where Created_on = '2021-07-12 00:00:00' and password_stud = '1m313';
 
 15. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть слово Andrey
 
 select * from students
 where Created_on = '2021-07-12 00:00:00' and name_stud like '%Andrey%';
 
 16. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть цифра 8
 
 select * from students
 where Created_on = '2021-07-12 00:00:00' and name_stud like '%8%';
 
 17. Вывести пользователя у которых id равен 110
 
 select * from students
 where id = 110;
 
 18. Вывести пользователя у которых id равен 153
 
 select * from students
 where id = 153;
 
 19. Вывести пользователя у которых id больше 140
 
 select * from students
 where id > 140;
 
 20. Вывести пользователя у которых id меньше 130
 
 select * from students
 where id < 130;
 
 21. Вывести пользователя у которых id меньше 127 или больше 188
 
 select * from students
 where id < 127 or id >188;
 
 22. Вывести пользователя у которых id меньше либо равно 137
 
 select * from students
 where id <= 137;
 
 23. Вывести пользователя у которых id больше либо равно 137
 
 select * from students
 where id >= 137;
 
 24. Вывести пользователя у которых id больше 180 но меньше 190
 
 select * from students
 where id > 180 and id < 190;
 
 25. Вывести пользователя у которых id между 180 и 190
 
 select * from students
 where id between 180 and 190;

select * from students
 where id >= 180 and id<=190;
 
 26. Вывести пользователей где password равен 12333, 1m313, 123313
 
 select * from students
 where password_stud in('12333', '1m313', '123313'); 
 
 
 27. Вывести пользователей где created_on равен 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00

 select * from students
 where created_on in('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00');
 
 
 28. Вывести минимальный id 
 
 select MIN(id) from students;
 
 29. Вывести максимальный.
 
 select MAX(id) from students;
 
 30. Вывести количество пользователей
 
 select count(id) from students;
 
 31. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку возрастания даты добавления пользоватлеля.
 
 select id, name_stud, Created_on  from students
order by Created_on ;
  
 32. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку убывания даты добавления пользоватлеля.

select id, name_stud, Created_on  from students
order by Created_on desc;

