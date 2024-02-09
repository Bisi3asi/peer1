WITH DATE_ANIMAL AS (
    SELECT  TO_NUMBER(TO_CHAR(CAST(DATETIME AS DATE), 'HH24')) AS HOUR
            ,ANIMAL_ID
    FROM    ANIMAL_OUTS
)
SELECT  HOUR
        ,COUNT(ANIMAL_ID) AS COUNT
FROM    DATE_ANIMAL
WHERE   HOUR BETWEEN 9 AND 19
GROUP BY HOUR
ORDER BY HOUR