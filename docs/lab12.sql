Fredy Godoy
--adding a comment about a comment :p

SELECT *
FROM courses

INSERT INTO assignments (course_id, title, status) 
VALUES ('COMP1238', 'Assignment with no date', 'Not Started');

SELECT * FROM assignments
LIMIT 10; 

SELECT count(*) FROM courses;

SELECT min(due_date) FROM assignments;

SELECT *
FROM  courses
WHERE course_name LIKE 'Intro%';

SELECT sqlite_version();

SELECT upper('ABCxyz');

SELECT length('abcde');

SELECT 7*5;

SELECT concat('ABC', '-', 'xyz');

SELECT date();

SELECT strftime('%Y', due_date) AS Year, * 
FROM assignments;

SELECT DISTINCT SUBSTRING(course_id, 1, 4) 
FROM courses;

SELECT SUBSTRING(course_id, 1, 4) AS prefix, count(*)
FROM courses
GROUP BY prefix;

SELECT *
FROM  assignments
WHERE status != 'Completed'
ORDER BY due_date;

SELECT course_id, title, status, due_date
FROM assignments
WHERE status != 'Completed'	
  AND course_id LIKE 'COMM%'
  AND due_date < '2024-12-31'
ORDER BY due_date;

SELECT course_id, course_name, lab_time
from courses
WHERE lab_time
LIKE 'Fri%'

SELECT due_date,title
from assignments
WHERE due_date > '2024-11-24'

SELECT COUNT (*),title,due_date, status
FROM assignments
GROUP BY status

SELECT max(course_name)
FROM courses

SELECT upper(course_name)
FROM courses

SELECT title, due_date
FROM assignments
WHERE due_date
LIKE '%-09-%';

SELECT title, due_date
FROM assignments
WHERE due_date is NULL
