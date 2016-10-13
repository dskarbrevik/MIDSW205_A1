DROP TABLE hospital_variability;

CREATE TABLE hospital_variability AS SELECT 
procedure_name, 
variance(hospital_score) OVER (PARTITION BY procedure_name ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS var_states
FROM procedures
GROUP BY procedure_name, hospital_score;

SELECT procedure_name, int(var_states) as int_var
FROM hospital_variability
GROUP BY procedure_name, var_states
ORDER BY int_var DESC
LIMIT 10;
