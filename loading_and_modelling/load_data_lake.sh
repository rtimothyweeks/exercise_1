sed 1d "Hospital General Information.csv" > hospitals_ucb.csv
sed 1d "Timely and Effective Care - Hospital.csv" > effective_care_ucb.csv
sed 1d "Readmissions and Deaths - Hospital.csv" > readmissions_ucb.csv
sed 1d "Measure Dates.csv" > measures_ucb.csv
sed 1d "hvbp_hcahps_10_28_2015.csv" > surveys_ucb.csv

hdfs dfs -mkdir /user/w205/hospital_compare/hospitals
hdfs dfs -mkdir /user/w205/hospital_compare/care
hdfs dfs -mkdir /user/w205/hospital_compare/readmission
hdfs dfs -mkdir /user/w205/hospital_compare/measures
hdfs dfs -mkdir /user/w205/hospital_compare/surveys

hdfs dfs -put hospitals_ucb.csv /user/w205/hospital_compare/hospitals
hdfs dfs -put effective_care_ucb.csv /user/w205/hospital_compare/care

hdfs dfs -put readmissions_ucb.csv /user/w205/hospital_compare/readmission
hdfs dfs -put measures_ucb.csv /user/w205/hospital_compare/measures
hdfs dfs -put surveys_ucb.csv /user/w205/hospital_compare/surveys
