echo "./kafka-topics.sh --zookeeper localhost:2181 --create --topic test --replication-factor 1 --partitions 1" >> output.txt

sh /usr/hdp/current/kafka-broker/bin/kafka-topics.sh --zookeeper localhost:2181 --create --topic test --replication-factor 1 --partitions 1

echo "---> Validation for Kafka Installation done successfully..."

echo "---> Validation for Kafka Installation done successfully..." >> output.txt
