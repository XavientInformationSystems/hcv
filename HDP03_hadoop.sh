#Run the smoke test as the $CLIENT_USER. Using Terasort, sort 10GB of data.
hadoop fs -rm -r -f /tmp/teragenout


hadoop jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-mapreduce-examples-*.jar teragen 100 /tmp/teragenout
echo "hadoop fs -ls /tmp/teragenout" >> output.txt
hadoop fs -ls /tmp/teragenout >> output.txt
echo  "Hadoop Core Smoke test executed successfully..."
echo "Hadoop Core Smoke test executed successfully..." >> output.txt

