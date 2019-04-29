#!/usr/bin/sh
### IMPORTANT NOTE: If any modification please contact i348761
. $HOME/.sapenv.sh
gp=`sapcontrol -nr 06 -function GetProcessList`
echo -e "\nsystem timestamp: `date`\n"
echo -e "memory status:\n `free -g -t`"
free_mem=`free -g -t | grep Mem | awk '{print $4}'`
if [ $free_mem -lt 400 ]
 then
  echo -e "\nperforming memory reclamation since OS free mem is less than 400G\n"
  for i in `sapcontrol -nr 06 -function GetProcessList | grep hdbindex | awk '{print $NF}'`;do hdbcons -p $i "mm gc -f";hdbcons -p $i "resman shrink -s 0";done;
  echo -e "\nmemory status after mem release:\n `free -g -t`"
fi
echo -e "\nRECOVERY DETAILS:\n"
egrep 'RECOVERY RECOVER DATA started' $DIR_INSTANCE/$VTHOSTNAME/trace/backup.log -A1 | tail -2
echo -e "\n"
for i in `ps -eaf | grep hdbindexserver | grep -v grep | awk '{print $10}'| grep .`;do echo -e "\nstatus of indexserver $i\n" ; grep "RECOVERY progress of service: indexserver, sc12hdbr1601:$i*, volume: [0-9]" $DIR_INSTANCE/$VTHOSTNAME/trace/backup.log | tail;done
echo -e "\n BACKUP LOG INFO (LAST 10 LINES)\n"
tail -f $DIR_INSTANCE/$VTHOSTNAME/trace/backup.log
