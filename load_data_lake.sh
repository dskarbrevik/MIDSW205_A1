#!/usr/bin/env bash

# takes header off base csv files and puts them in hdfs

tail -n +2 HCAHPS\ -\ Hospital.csv > survey_data.csv
tail -n +2 Timely\ and\ Effective\ Care\ -\ Hospital.csv > procedures_data.csv 

hdfs dfs -put survey_data.csv /user/w205
hdfs dfs -put procedures_data.csv /user/w205

