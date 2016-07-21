echo -e "foo\nbar\nfoo\nbar\nfoo" >tez_test.txt

hdfs dfs -put -f tez_test.txt /tmp/

hadoop jar /usr/hdp/current/tez-client/tez-examples-*.jar orderedwordcount /tmp/tez_test.txt /tmp/out

echo "hadoop jar /usr/hdp/current/tez-client/tez-examples-*.jar orderedwordcount /tmp/tez_test.txt /tmp/out" >> output.txt

echo "hdfs dfs -cat '/tmp/out/*'" >> output.txt

hdfs dfs -cat '/tmp/out/*'

hadoop fs -cat '/tmp/out/*' >> output.txt

echo "---> Validation for the Tez Installation done successfully..."

echo "---> Validation for the Tez Installation done successfully..." >> output.txt


