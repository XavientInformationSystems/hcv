echo -e "alice miller\t49\t3.15" > student.txt
hadoop fs -rm -r -f /tmp/student
hadoop fs -mkdir -p /tmp/student 
hadoop fs -copyFromLocal student.txt /tmp/student 
hadoop fs -chmod 775 /tmp/student/student.txt
hive -e "drop table if exists student; CREATE EXTERNAL TABLE student(name string, age int, gpa double) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t'STORED AS TEXTFILE LOCATION '/tmp/student'";
hive -e "SELECT COUNT(*) FROM student" 

echo "---> Validation for Tez Installation done successfully..."

echo "---> Validation for Tez Installation done successfully..." >> output.txt
