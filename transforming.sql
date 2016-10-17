DROP TABLE hospitals;
CREATE TABLE hospitals AS SELECT 
`Provider ID` AS provider_id, 
`Hospital Name` AS hospital_name, 
`State` AS state
FROM procedure_data;

DROP TABLE  procedures;
CREATE TABLE procedures AS SELECT 
`Provider ID` AS provider_id,
`Hospital Name` as hospital_name,
`State` AS state, 
`Measure Name` AS procedure_name, 
`Score` AS hospital_score,
`Sample` AS patient_sample_size
FROM procedure_data;

DROP TABLE surveys;
CREATE TABLE surveys AS SELECT
`Provider ID` AS provider_id,
`Hospital Name` AS hospital_name,
`State` AS state,
`HCAHPS Answer Description` AS response,
`Patient Survey Star Rating` AS avg_rating,
`HCAHPS Answer Percent` AS percent_of_total,
`HCAHPS Linear Mean Value` AS linear_mean_score,
`Number of Completed Surveys` AS num_of_surveys
FROM survey_data;
