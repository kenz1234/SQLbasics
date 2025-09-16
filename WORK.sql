show databases;

CREATE DATABASE students;

USE students;
CREATE TABLE students(Student_ID int, Student_Name varchar(255), Department varchar(255), Batch varchar(255));



INSERT INTO students(Student_ID,Student_Name,Department,Batch)
VALUES('1','JP Morgan','CSE','1'), ('2','Tom Holland','CSE','2'), ('3','Peter Parker','ECE','1'), ('4','Bruce Wayne','MECH','2');







DELETE FROM students 
WHERE Student_ID = '1';



SELECT * FROM students
where Batch = '1';


SELECT * from students
ORDER BY Student_Name ASC;


ALTER TABLE students
DROP COLUMN Batch;


UPDATE students
SET Student_Name = 'shibu', Department = 'EEE'
WHERE Student_ID = 2 ;



