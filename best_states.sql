DROP TABLE best_states;

CREATE TABLE best_states AS SELECT 
state, 
sum(hospital_score) OVER (PARTITION BY state ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS sum_states
FROM procedures
GROUP BY state, hospital_score;

SELECT state, sum_states
FROM best_states
GROUP BY state, sum_states
ORDER BY sum_states DESC 
LIMIT 10;
