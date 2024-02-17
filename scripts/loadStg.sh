#Logging Execution
exec &> /root/slipstream/Logs/execution.log
LOGFILE=/root/slipstream/Logs/executionLog.log

cp /root/slipstream/Landing/*.csv /root/slipstream/Backup/
echo "`date +%H:%M:%S` : File Backup Complete" >> $LOGFILE

cd ../Landing
echo "`date +%H:%M:%S` : Current Directory: Landing" >> $LOGFILE

sed -i 1d *.csv
echo "`date +%H:%M:%S` : Header Row Removed" >> $LOGFILE

cd ../Scripts
cd LoadTPT
echo "`date +%H:%M:%S` : Current Directory: Script/LoadTPT" >> $LOGFILE

echo "`date +%H:%M:%S` : Starting TPTLoad All Tables" >> $LOGFILE

tbuild -f loadCustomer.tpt
tbuild -f loadCustomerStats.tpt
tbuild -f loadLoyalty.tpt
tbuild -f loadPlanMaster.tpt
tbuild -f loadVoicePlanRun.tpt
tbuild -f loadDataPlanRun.tpt
echo "`date +%H:%M:%S` : TPTLoad All Tables Complete" >> $LOGFILE

cd ..
echo "`date +%H:%M:%S` : Current Directory: Scripts" >> $LOGFILE

echo "`date +%H:%M:%S` : Starting Stage To Transformation Phase" >> $LOGFILE
bteq < stgTotrn.bteq
echo "`date +%H:%M:%S` : Stage To Transformation Phase Complete" >> $LOGFILE

