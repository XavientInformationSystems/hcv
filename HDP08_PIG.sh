echo -e "alice miller\t49\t3.15" > student.txt
hadoop fs -rm -r -f /tmp/student
hadoop fs -rm -r -f /tmp/id.out
hadoop fs -mkdir -p /tmp/student 
hadoop fs -copyFromLocal student.txt /tmp/student 
hadoop fs -chmod 775 /tmp/student/student.txt

pig -x mapreduce id.pig

hadoop fs -ls /tmp/id.out/ >> output.txt

echo "---> Validation of Pig Installation done successfully..."

echo "---> Validation of Pig Installation done successfully..." >> output.txt
