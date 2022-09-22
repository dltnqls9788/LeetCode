# Please write a DELETE statement and DO NOT write a SELECT statement.
# Write your MySQL query statement below
# DELETE
# FROM person
# WHERE Id NOT IN (
# SELECT sub.min_id
# FROM (
# SELECT Email, MIN(Id) AS min_id
# FROM Person
# GROUP BY Email 
# ) sub)


DELETE p1
FROM Person p1
     INNER JOIN Person p2 ON p1.Email = p2.Email
WHERE p1.ID > p2.Id