# change guava in /hadoop-project/pom.xml (2)
# from 11.0.2 to 19.0

# other changes to the source

mvn clean
mvn install -DskipTests -Dmaven.test.skip=true -Dmaven.javadoc.skip=true

# fixed errors: 
# /hadoop-common-project/hadoop-kms/src/main/java/org/apache/hadoop/crypto/key/kms/server/KMS.java
# /hadoop-hdfs-project/hadoop-hdfs/src/main/java/org/apache/hadoop/hdfs/server/namenode/ReencryptionHandler.java
# change new StopWatch() to StopWatch.createStarted()
mvn ... -rf: ...

mvn package -Pdist -Pdoc -Psrc -Dtar -DskipTests 
# distribution in /hadoop-dist/target/
# hadoop-3.1.0-SNAPSHOT.tar.gz
# also generated: hadoop-3.1.0-SNAPSHOT
# also generated: hadoop-3.1.0-SNAPSHOT-src.tar.gz

# original errors on linux
# use stable release instead
