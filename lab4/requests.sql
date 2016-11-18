/*Create a view containing all fields of table STUDENT together with the average grade
(field AVG_GRADE) of each student. Name the view STUD_GRADES.*/
CREATE VIEW STUD_GRADES AS
  SELECT
    STUDENTS.ST_ID,
    STUDENTS.ST_NAME,
    STUDENTS.ST_SURNAME,
    STUDENTS.ST_ID_NUM,
    STUDENTS.ST_GROUP,
    AVG(GRADES.G_GRADE) AS AVERAGE_GRADE
  FROM STUDENTS
  INNER JOIN GRADES ON STUDENTS.ST_ID = GRADES.G_STUDENT
  GROUP BY STUDENTS.ST_ID, STUDENTS.ST_NAME, STUDENTS.ST_SURNAME, STUDENTS.ST_ID_NUM, STUDENTS.ST_GROUP;

/*Find how many group mates each student has.*/
SELECT STUDENTS.ST_NAME,STUDENTS.ST_NAME ,STUDENTS.ST_GROUP, NB_GROUPEMATES
  FROM (
    SELECT
      ST_GROUP AS SST_GROUP,
      COUNT(STUDENTS.ST_GROUP) AS NB_GROUPEMATES
    FROM STUDENTS
    GROUP BY STUDENTS.ST_GROUP
  )
  RIGHT JOIN STUDENTS ON SST_GROUP = STUDENTS.ST_GROUP;

/*Assign ranks to students of each group by average grade.
Student having the highest average grade in each group receives rank 1,
the second one receives rank 2, and so on.*/
SELECT ST_NAME, AVERAGE_GRADE,
RANK() OVER (PARTITION BY ST_GROUP ORDER BY AVERAGE_GRADE DESC) AS RANK,
ST_GROUP
FROM STUD_GRADES;

/*Find the difference between each student’s
average grade and the best average grade in his group.*/
SELECT ST_NAME, MAX_MARK - AVERAGE_GRADE, AVERAGE_GRADE, MAX_MARK, ST_GROUP FROM (
  SELECT MAX(AVERAGE_GRADE) AS MAX_MARK, ST_GROUP AS T_GROUP FROM STUD_GRADES
  GROUP BY ST_GROUP ORDER BY ST_GROUP
)
RIGHT JOIN STUD_GRADES ON T_GROUP = STUD_GRADES.ST_GROUP;

/*For each student find
a. Number of students that have at least the same average grade as he/she has.
b. Number of the students that have average grade higher than their average
  grade by at least 1 mark.*/
/*a*/
SELECT
  AVERAGE_GRADE,
  COUNT(STUD_GRADES.AVERAGE_GRADE) AS NUMBER_OF_STUDENT FROM STUD_GRADES
GROUP BY AVERAGE_GRADE;
/*b*/
SELECT STUD_GRADES.ST_NAME, STUD_GRADES.AVERAGE_GRADE
FROM STUD_GRADES
WHERE STUD_GRADES.AVERAGE_GRADE >=
      (
        SELECT ROUND(AVG(STUD_GRADES.AVERAGE_GRADE),3)
        FROM STUD_GRADES
      ) + 1;

/*Find which grades differ the most from the corresponding teacher’s average grade.*/
SELECT DISTINCT G_COURSE,FIRST_VALUE(G_GRADE)
  OVER (PARTITION BY G_COURSE ORDER BY DIFF DESC)
FROM (
  SELECT
    T_AVG,
    GRADES.G_GRADE,
    T_AVG - GRADES.G_GRADE AS DIFF,
    GRADES.G_COURSE
  FROM (
    SELECT
      AVG(GRADES.G_GRADE) AS T_AVG,
      TEACHERS.T_NAME,
      TEACHERS.T_ID       AS TEA_ID
    FROM GRADES
      INNER JOIN COURSES ON COURSES.C_ID = GRADES.G_COURSE
      INNER JOIN TEACHERS ON COURSES.C_TEACHER = TEACHERS.T_ID
    GROUP BY TEACHERS.T_NAME, TEACHERS.T_ID
    )
    INNER JOIN COURSES ON TEA_ID = COURSES.C_TEACHER
    INNER JOIN GRADES ON GRADES.G_COURSE = COURSES.C_ID
  GROUP BY COURSES.C_ID, T_AVG, GRADES.G_GRADE, GRADES.G_COURSE
  ORDER BY COURSES.C_ID
)
ORDER BY G_COURSE ASC;

/*How many days after the first exam of each student was
passed were the other exams passed by him?*/
SELECT GRADES.G_DATE, GRADES.G_STUDENT, GRADES.G_DATE-min_date as days FROM GRADES
INNER JOIN (
SELECT min_date, st_id FROM (
SELECT
  GRADES.G_STUDENT as st_id, GRADES.G_DATE as min_date,
  rank() OVER (PARTITION BY GRADES.G_STUDENT ORDER BY GRADES.G_DATE ASC) as rnk
FROM GRADES)
WHERE rnk=1)
ON GRADES.G_STUDENT = st_id;

/*Find which grades differ more than 1 mark from
the highest grade of the corresponding student.*/
SELECT GRADES.G_STUDENT,GRADES.G_GRADE, max FROM GRADES
INNER JOIN (
  SELECT
    MAX(GRADES.G_GRADE) as max, GRADES.G_STUDENT as st_id
  FROM GRADES
  GROUP BY GRADES.G_STUDENT
) ON st_id = GRADES.G_STUDENT
WHERE GRADES.G_GRADE < max - 1
ORDER BY GRADES.G_STUDENT ASC;

  /*check*/
  SELECT GRADES.G_STUDENT,GRADES.G_GRADE FROM GRADES
  ORDER BY GRADES.G_STUDENT ASC;

/*Divide students into four groups by their average mark.
The first 25% of students have to be assigned to the first group,
the second ones to the second and so on. */
SELECT ST_ID, AVERAGE_GRADE,
  PERCENT_RANK()
    OVER (ORDER BY AVERAGE_GRADE ASC) as pr
FROM STUD_GRADES;