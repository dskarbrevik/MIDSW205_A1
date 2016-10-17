
DROP TABLE survey_data;
CREATE EXTERNAL TABLE survey_data
(`Provider ID` int, 
`Hospital Name` string, 
`Address` string, 
`City` string, 
`State` string, 
`ZIP Code` string, 
`County Name` string, 
`Phone Number` string, 
`HCAHPS Measure ID` string, 
`HCAHPS Question` string, 
`HCAHPS Answer Description` string, 
`Patient Survey Star Rating` int, 
`Patient Survey Star Rating Footnote` string, 
`HCAHPS Answer Percent` int, 
`HCAHPS Answer Percent Footnote` string,
`HCAHPS Linear Mean Value` int, 
`Number of Completed Surveys` int, 
`Number of Completed Surveys Footnote` string, 
`Survey Response Rate Percent` string, 
`Survey Repsonse Rate Percent Footnote` string, 
`Measure Start Date` string, 
`Measure End Date` string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" =",",
"quoteChar" ='"',
"escapeChar" ='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1/loading_and_modeling/surveys';

DROP TABLE procedure_data;
CREATE EXTERNAL TABLE procedure_data 
(`Provider ID` int, 
`Hospital Name` string, 
`Address` string,
`City` string,
`State` string, 
`ZIP Code` string,
`County Name` string,
`Phone Number` string,
`Condition` string, 
`Measure ID` string, 
`Measure Name` string, 
`Score` int, 
`Sample` string,
`Footnote` string,
`Measure Start Date` string,
`Measure End Date` string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" =",",
"quoteChar" ='"',
"escapeChar" ='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1/loading_and_modeling/procedures';

