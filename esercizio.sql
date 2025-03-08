use db_university;

select count(*)
from students
where year(date_of_birth) = 1990;

select count(*), cfu
from courses
where cfu > 10;

select *
from students
where year(date_of_birth) <= 1995;

select count(*), period, year
from courses
where year = 1 and period = 'I semestre';

select count(*), date, hour
from exams
where date = '2020-06-20' and hour >= '14:00:00';

select count(*), level
from degrees
where level = 'magistrale';

select count(*)
from departments;

select count(*), phone as 'numero di telefono'
from teachers
where phone is null;
