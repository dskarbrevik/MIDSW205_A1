DROP TABLE best_hospitals;
CREATE TABLE best_hospitals AS SELECT hospital_name, state, sum(hospital_score) AS sum_score
FROM procedures
GROUP BY hospital_name, state;

SELECT * FROM best_hospitals
ORDER BY sum_score DESC
LIMIT 10;
