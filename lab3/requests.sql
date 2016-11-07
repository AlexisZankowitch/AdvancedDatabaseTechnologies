/*How many different grades each student has received?*/
SELECT count(G_GRADE),STUDENTS.ST_NAME, STUDENTS.ST_ID
FROM GRADES INNER JOIN STUDENTS ON GRADES.G_STUDENT = STUDENTS.ST_ID
GROUP BY G_STUDENT, STUDENTS.ST_NAME, STUDENTS.ST_ID;

/*Find all grades that have been received in first ten days of the month.*/
SELECT *
FROM GRADES WHERE G_DATE >= to_date('1/JUN/2010','dd/mm/yyyy') AND G_DATE < to_date('1/JUN/2010','dd/mm/yyyy') + 10;

/*Sort courses according to length of their names.*/
SELECT * FROM COURSES ORDER BY length(COURSES.C_TITLE) ASC ;

/*Find how many full months ago has each grade been received.*/
SELECT round(MONTHS_BETWEEN(CURRENT_DATE,GRADES.G_DATE)) "Months" FROM GRADES;

/*Find average marks of all students and round them
a. Till the tenth of the grade.
b. To the nearest integer smaller than the average mark, for example from 7.9 to 7.
c. To the nearest integer grater than the average mar, for example from 7.05 to 8.*/
/*a*/
SELECT G_STUDENT,
  round(avg(GRADES.G_GRADE),10) as A_Tenth,
  floor(avg(GRADES.G_GRADE)) AS B_ROUND_DOWN,
  ceil(avg(GRADES.G_GRADE)) AS C_ROUND_Up
FROM GRADES GROUP BY GRADES.G_STUDENT;

/*Retrieve students together with years they started learning in RTU.
Hint: first two numbers of students ID mean the year when the student started learning in RTU.*/
/*TODO RESULT : JEAN MARC | 2010*/
SELECT YEAR,COUNT(ST_ID) OVER (PARTITION BY YEAR) AS NUMBER_OF_STUDENT FROM
  (SELECT substr(STUDENTS.ST_ID_NUM,1,2) as YEAR ,STUDENTS.ST_ID FROM STUDENTS);

/*Do the same as in the previous query, but sort the results according to the years students entered RTU. */
/*TODO*/
SELECT substr(STUDENTS.ST_ID_NUM,1,2) as YEAR ,STUDENTS.ST_ID,STUDENTS.ST_NAME
FROM STUDENTS ORDER BY  YEAR;

/*Calculate the average marks of each teacher and each course. Do it in the same query!*/
/*TODO REVOIR AFFICHAGE*/
SELECT TEACHERS.T_NAME AS NAME,ROUND(AVG(GRADES.G_GRADE),2) AS AVEGARE FROM GRADES
INNER JOIN COURSES ON COURSES.C_ID = GRADES.G_COURSE
INNER JOIN TEACHERS ON COURSES.C_TEACHER = TEACHERS.T_ID
GROUP BY C_TEACHER, TEACHERS.T_NAME
UNION
SELECT COURSES.C_TITLE,ROUND(AVG(GRADES.G_GRADE),2) AS AVG_COURSES FROM GRADES
INNER JOIN COURSES ON COURSES.C_ID = GRADES.G_COURSE
GROUP BY COURSES.C_TITLE;

SELECT avg(GRADES.G_GRADE),COUNT(GRADES.G_GRADE) FROM GRADES
INNER JOIN COURSES ON COURSES.C_ID = GRADES.G_COURSE
INNER JOIN TEACHERS ON COURSES.C_TEACHER = TEACHERS.T_ID
  WHERE C_TEACHER=1;

/*Find which teachers have the average marks that differ the most
from the average mark in the whole DB?*/

SELECT * FROM (
  SELECT
    ROUND(ABS(AVG(GRADES.G_GRADE) - (SELECT avg(GRADES.G_GRADE) as AVG_MARK FROM GRADES)),4) AS DELTA_TEACHER,
    ROUND(AVG(GRADES.G_GRADE),4) AS AVG_TEACHER,
    ROUND((SELECT avg(GRADES.G_GRADE) as AVG_MARK FROM GRADES),4) AS AVG_GLOBAL,
    TEACHERS.T_NAME FROM GRADES
  INNER JOIN COURSES ON COURSES.C_ID = GRADES.G_COURSE
  INNER JOIN TEACHERS ON COURSES.C_TEACHER = TEACHERS.T_ID
  GROUP BY  TEACHERS.T_NAME
ORDER BY DELTA_TEACHER DESC);
SELECT avg(GRADES.G_GRADE) as AVG_MARK FROM GRADES;