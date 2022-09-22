# Please write a DELETE statement and DO NOT write a SELECT statement.
# Write your MySQL query statement below
DELETE
FROM person
WHERE Id NOT IN (
SELECT sub.min_id
FROM (
SELECT Email, MIN(Id) AS min_id
FROM Person
GROUP BY Email 
) sub)