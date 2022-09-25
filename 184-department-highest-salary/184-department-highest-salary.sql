# Write your MySQL query statement below

SELECT d.name AS department
     , e.name AS employee
     , e.salary
FROM employee AS e
     INNER JOIN(
     SELECT departmentid, MAX(salary) AS max_salary
     FROM employee
     GROUP BY departmentid
     ) AS dh ON e.departmentid = dh.departmentid
             AND e.salary = dh.max_salary
     INNER JOIN department AS d ON d.id = e.departmentid