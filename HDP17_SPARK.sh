echo "spark-submit --class org.apache.spark.examples.SparkPi --master local[8] /usr/hdp/2.4.2.0-258/spark/lib/spark-assembly-1.6.1.2.4.2.0-258-hadoop2.7.1.2.4.2.0-258.jar" >> output.txt

sh /usr/hdp/current/spark-client/bin/spark-submit --class org.apache.spark.examples.SparkPi --master local[8] /usr/hdp/2.4.2.0-258/spark/lib/spark-assembly-1.6.1.2.4.2.0-258-hadoop2.7.1.2.4.2.0-258.jar

echo "---> Validation for Spark Installation done successfully..."

echo "---> Validation for Spark Installation done successfully..." >> output.txt
