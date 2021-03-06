CWD=`pwd`
YCSB=~/work/ycsb/
echo "LOAD" > $CWD/restults.txt
cd $YCSB
./bin/ycsb load mongodb -s -P workloads/workloada -p workload=com.yahoo.ycsb.workloads.CoreWorkload -p mongodb.writeConcern=acknowledged -p mongodb.database=ycsb -p recordcount=2000000 -p exportmeasurementsinterval=30000 -p fieldcount=10 -p timeseries.granularity=100 -p threadcount=256 -p insertretrycount=10 -p readretrycount=1 -p ignoreinserterrors=true -p reconnectionthroughput=10 -p mongodb.url=mongodb://localhost:27017/ -p fieldnameprefix=f -p maxexecutiontime=96000 -p mongodb.readPreference=primary -p fieldlength=10 -p reconnectiontime=1000 -p operationcount=200000000 >> $CWD/restults.txt
echo "RUN" >> $CWD/restults.txt
./bin/ycsb run mongodb -s -P workloads/workloada -p workload=com.yahoo.ycsb.workloads.CoreWorkload -p mongodb.writeConcern=acknowledged -p mongodb.database=ycsb -p recordcount=2000000 -p exportmeasurementsinterval=30000 -p fieldcount=10 -p timeseries.granularity=100 -p threadcount=256 -p insertretrycount=10 -p readretrycount=1 -p ignoreinserterrors=true -p reconnectionthroughput=10 -p mongodb.url=mongodb://localhost:27017/ -p fieldnameprefix=f -p maxexecutiontime=96000 -p mongodb.readPreference=primary -p fieldlength=10 -p reconnectiontime=1000 -p operationcount=50000000 >> $CWD/restults.txt
