
DROP TABLE Procedures;
CREATE EXTERNAL TABLE Procedures (Provider_ID int, Measure_ID int, Measure_Name string, Score double, Patient_Sample_Size int)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" =",",
"quoteChar" ='"',
"escapeChar" ='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/';

DROP TABLE Surveys;
CREATE EXTERNAL TABLE Surveys (Provider_ID int, Survey_ID int, Question string, Answer string, Num_Completed_Surveys int)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" =",",
"quoteChar" ='"',
"escapeChar" ='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/';

DROP TABLE Hospitals;
CREATE EXTERNAL TABLE Hospitals (Provider_ID int, Name string, State string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"seperatorChar" =",",
"quoteChar" ='"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205';
