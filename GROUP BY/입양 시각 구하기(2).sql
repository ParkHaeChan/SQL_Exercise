--https://programmers.co.kr/learn/courses/30/lessons/59413

-- recursive 구로 임시 뷰를 생성 (0~23)까지의 값을 나타내는 1개의 열
with recursive tempview as (
    select 0 as hour -- 초기값: 0
    union all   -- 반복된 select 명령의 결과물을 뷰로 합칠 것임
    select hour+1 from tempview where hour+1 < 24   -- where 구에서 얼마나 반복할지 설정
)
-- 부모 쿼리로 hour를 가져오고 서브쿼리로 ANIMAL_OUTS테이블 접근하여 조건을 만족하는 시간의 개수를 센다
SELECT hour as HOUR, 
(select COUNT(*) FROM ANIMAL_OUTS WHERE hour = SUBSTRING(DATETIME, 12, 2))
FROM tempview
GROUP BY hour ORDER BY hour