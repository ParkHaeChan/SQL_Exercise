--https://programmers.co.kr/learn/courses/30/lessons/59412
SELECT SUBSTRING(DATETIME, 12,2) as HOUR, COUNT(ANIMAL_ID) 
FROM ANIMAL_OUTS 
WHERE SUBSTRING(DATETIME, 12,2) >= '09' AND
SUBSTRING(DATETIME, 12,2) <'20'
GROUP BY HOUR ORDER BY HOUR ASC