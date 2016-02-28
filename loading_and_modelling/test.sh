sh /root/start-hadoop.sh
su - w205
hdfs dfs -mkdir /user/w205/hospital_compare
mkdir hospital_raw
cd hospital_raw/
wget https://data.medicare.gov/views/bg9k-emty/files/Dlx5-ywq01dGnGrU09o_Cole23nv5qWeoYaL-OzSLSU?content_type=application%2Fzip%3B%20charset%3Dbinary&filename=Hospital_Revised_Flatfiles.zip

