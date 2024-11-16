-- Select all records from the courses table
SELECT * FROM courses;

-- Select the first 10 records from the assignments table
SELECT * FROM assignments
LIMIT 10; 

-- Count the total number of courses
SELECT count(*) FROM courses;

-- Find the earliest due date from the assignments table
SELECT min(due_date) FROM assignments;

-- Select all courses where the course name starts with 'Intro'
SELECT *
FROM  courses
WHERE course_name LIKE 'Intro%';

-- Select all assignments not marked as 'Completed', ordered by due date
SELECT *
FROM  assignments
WHERE status != 'Completed'
ORDER BY due_date;

-- Select specific details about assignments for courses starting with 'COMM' and due before the end of 2024
SELECT course_id, title, status, due_date
FROM assignments
WHERE status != 'Completed'	
  AND course_id LIKE 'COMM%'
  AND due_date < '2024-12-31'
ORDER BY due_date;

-- Select title and due date for assignments in the course 'COMP1234'
SELECT title, due_date
from assignments
where course_id='COMP1234'

-- Find the earliest due date in the assignments table
select min(due_date)
from assignments

-- Find the latest due date in the assignments table
select max(due_date)
from assignments

-- Select title and course ID for assignments due on '2024-10-08'
select title, course_id
from assignments 
where due_date='2024-10-08'

-- Select title and due date for assignments due in October 2024
select title, due_date
from assignments
where due_date LIKE '2024-10%'
    
-- Select all assignments marked as 'Completed'
SELECT *
from assignments
where status='Completed'
