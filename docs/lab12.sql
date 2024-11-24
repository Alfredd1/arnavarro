--This is the Lab 12 requirement for COMP1238. It contains all queries that successfully run 
INSERT INTO assignments (course_id, title, status) 
VALUES ('COMP1238', 'Assignment with no date', 'Not Started');

--Finds the first 10 assignments
SELECT * FROM assignments
LIMIT 10; 

--Finds the count of all courses
SELECT count(*) FROM courses;

--Finds the minimum/earliest due date from assignments
SELECT min(due_date) from assignments;

--Finds all courses with a course name that starts with Intro
SELECT *
FROM  courses
WHERE course_name LIKE 'Intro%';

--Shows the version of the SQLite
SELECT sqlite_version();

--Uppercases anything inside it
SELECT upper('ABCxyz');

--Shows the length of the string inside it
SELECT length('abcde');

--performs an operation
SELECT 7*5;

--Concatenates the strings
SELECT concat('ABC', '-', 'xyz');

--Shows the date today
SELECT date();

--Specifies year
SELECT strftime('%Y', due_date) AS Year, * 
FROM assignments;

--Returns course IDs and filters out duplicates
-- SUBSTRING(string, start, length)
SELECT DISTINCT SUBSTRING(course_id, 1, 4) 
FROM courses;

-- Count how many courses there are with each prefix like 'MATH' and 'COMP'
SELECT SUBSTRING(course_id, 1, 4) AS prefix, count(*)
FROM courses
GROUP BY prefix;

--Shows all assignments incomplete and are ordered by their due dates
SELECT *
FROM  assignments
WHERE status != 'Completed'
ORDER BY due_date;

--Practice Questions
--1
SELECT concat(course_name, ' - ', semester) AS 'course name and semester'
from courses;

--2
SELECT course_id, course_name, lab_time
FROM courses
WHERE lab_time LIKE 'Fri%';

--3
SELECT *
FROM assignments
WHERE due_date > date();

--4
SELECT count(*) as 'total assignments by status'
FROM assignments
GROUP BY status;

--5
SELECT course_name, LENGTH(course_name) AS length
FROM courses
ORDER BY LENGTH(course_name) DESC
LIMIT 1;

--6
SELECT upper(course_name)
FROM courses;

--7
SELECT title
FROM assignments
where due_date LIKE '%-09-%';

--8
SELECT *
FROM assignments
where due_date IS NULL;


