--https://programmers.co.kr/learn/courses/30/lessons/59040
SELECT ANIMAL_TYPE, COUNT(ANIMAL_TYPE) FROM ANIMAL_INS GROUP BY ANIMAL_TYPE 
HAVING ANIMAL_TYPE = 'Dog' OR ANIMAL_TYPE = 'Cat' ORDER BY ANIMAL_TYPE