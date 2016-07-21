#!/bin/sh
# Auther:
# Description:
# Update Date:
# Version:
set -e

if [ -z "${BASH_VERSINFO}" ]; then
  echo "ERROR: You must execute this script with BASH"
  exit 255
fi

echo "# "
echo "# Running smoke test on HDP 2.4.2"
echo "# Following components to perform the smoke tests"
  
# Unmount/remove stuff:
#cleanup

# Update below absolute path according to your environement this will load components needs to be tested values
source /home/devuser301/mukesh/config.txt

#Smoke Test MapReduce
if [ "$HDP03_CORE_HADOOP" = "YES" ] || [ "$HDP03_CORE_HADOOP" = "Y" ] ;
then
    echo "---> Start Hadoop Core Smoke test..."
    echo "---> Start Hadoop Core Smoke test..." >> output.txt
    sh ./HDP03_hadoop.sh
fi

if [ "$HDP04_HBASE" = "YES" ] || [ "$HDP04_HBASE" = "Y" ] ;
then
    echo "---> Start HBase Installation test..."
    echo "---> Start HBase Installation test..." >> output.txt
    sh ./HDP04_HBASE.sh
fi

if [ "$HDP05_PHOENIX" = "YES" ] || [ "$HDP05_PHOENIX" = "Y" ] ;
then
    echo "---> Start Validating a Native Phoenix Installation on an Unsecured Cluster..."
    echo "---> Start Validating a Native Phoenix Installation on an Unsecured Cluster..." >> output.txt
    sh ./HDP05_PHOENIX.sh
fi

if [ "$HDP06_TEZ" = "YES" ] || [ "$HDP06_TEZ" = "Y" ] ;
then
    echo "---> Start Validating the Tez Installation..."
    echo "---> Start Validating the Tez Installation..." >> output.txt
    sh ./HDP06_TEZ.sh
fi

if [ "$HDP07_HIVE_HCATALOG" = "YES" ] || [ "$HDP07_HIVE_HCATALOG" = "Y" ] ;
then
    echo "---> Start Validating Hive Installation and Apache HCatalog..."
    echo "---> Start Validating Hive Installation and Apache HCatalog..." >> output.txt
    sh ./HDP07_HIVE_HCATALOG.sh
fi

if [ "$HDP08_PIG" = "YES" ] || [ "$HDP08_PIG" = "Y" ] ;
then
    echo "---> Start Validating Pig Installation..."
    echo "---> Start Validating Pig Installation..." >> output.txt
    sh ./HDP08_PIG.sh
fi

if [ "$HDP09_WEBHCAT" = "YES" ] || [ "$HDP09_WEBHCAT" = "Y" ] ;
then
    echo "---> Start Validating WebHCat REST interface Installation..."
    echo "---> Start Validating WebHCat REST interface Installation..." >> output.txt
    sh ./HDP09_WEBHCAT.sh
fi

if [ "$HDP10_OOZIE" = "YES" ] || [ "$HDP10_OOZIE" = "Y" ] ;
then
    echo "---> Start Validating Oozie Installation..."
    echo "---> Start Validating Oozie Installation..." >> output.txt
    sh ./HDP10_OOZIE.sh
fi

if [ "$HDP11_RANGER" = "YES" ] || [ "$HDP11_RANGER" = "Y" ] ;
then
    echo "---> Start Validating Ranger Installation..."
    echo "---> Start Validating Ranger Installation..." >> output.txt
    sh ./HDP11_RANGER.sh
fi

if [ "$HDP13_SQOOP" = "YES" ] || [ "$HDP13_SQOOP" = "Y" ] ;
then
    echo "---> Start Validating Sqoop Installation..."
    echo "---> Start Validating Sqoop Installation..." >> output.txt
    sh ./HDP13_SQOOP.sh
fi

if [ "$HDP17_SPARK" = "YES" ] || [ "$HDP17_SPARK" = "Y" ] ;
then
    echo "---> Start Validating Spark Installation..."
    echo "---> Start Validating Spark Installation..." >> output.txt
    sh ./HDP17_SPARK.sh
fi

if [ "$HDP18_KAFKA" = "YES" ] || [ "$HDP18_KAFKA" = "Y" ] ;
then
    echo "---> Start Validating Kafka Installation..."
    echo "---> Start Validating Kafka Installation..." >> output.txt
    sh ./HDP18_KAFKA.sh
fi

if [ "$HDP21_ATLAS" = "YES" ] || [ "$HDP21_ATLAS" = "Y" ] ;
then
    echo "---> Start Validating Atlas Installation..."
    echo "---> Start Validating Atlas Installation..." >> output.txt
    sh ./HDP21_ATLAS.sh
fi
# THE END
