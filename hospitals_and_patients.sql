DROP TABLE hospitals_and_patients;

CREATE TABLE hospitals_and_patients AS SELECT 
hospital_name, avg_rating,
sum(avg_rating) OVER (PARTITION BY hospital_name ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS sum_survey
FROM surveys 
GROUP BY hospital_name, avg_rating;

SELECT hospital_name, sum_survey
FROM hospitals_and_patients
GROUP BY hospital_name, sum_survey
ORDER BY sum_survey DESC
LIMIT 10;

