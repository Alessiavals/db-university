use db_university;

-- ESERCIZIO CON SELECT ------

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

---- ESERCIZIO CON GROUP BY -----

select count(*), enrolment_date
from students
group by year(enrolment_date);

select count(*), office_address as 'edificio insegnanti'
from teachers
group by office_address;

select exam_id as 'appelli esame', AVG(vote) as 'media dei voti'
from exam_student
group by vote, exam_id;

select count(*), name, department_id
from degrees
group by department_id;