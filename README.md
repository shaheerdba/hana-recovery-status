# SAP HANA Recovery Status Check Script (a.k.a rstat)
## A script to display the SAP HANA Recovery progress
### DESCRIPTION:
The hana-recovery-status (a.k.a **rstat**) is a house keeping script for SAP HANA. It can be used to display realtime recovery status from the bash prompt itself, without having the need of finding the information from backup.log

### DISCLAIMER:
ANY USAGE OF rstat ASSUMES THAT YOU HAVE UNDERSTOOD AND AGREED THAT:

```
rstat  is NOT SAP official software, so normal SAP support of hana-recovery-status cannot be assumed
rstat is open source
rstat is provided "as is"
rstat is to be used on "your own risk"
rstat is a one-man's hobby; developed, maintained and supported only during non-working hours
```

All output from executing `bash rstat.sh --help` can help you display precise information about recovery status of SAP HANA tasks automatically but is NOT an attempt to teach you SAP HANA
Therefore it is assumed that you understand all statements that hana-recovery-status (a.k.a rstat) does to make changes in your system
For recommendations see SAP HANA Administration Workshops or other documentation, like e.g. SAP Note [2400024](https://launchpad.support.sap.com/#/notes/=2400024)

### Sample Result:
```shell
r16adm@host:/usr/sap/R16/HDB06/host/trace> rstat

system timestamp: Mon Apr 29 17:01:58 CEST 2019

memory status:
              total       used       free     shared    buffers     cached
Mem:          2014       1345        669          9          0        713
-/+ buffers/cache:        632       1382
Swap:          218          1        217
Total:        2233       1346        887

RECOVERY DETAILS:

2019-04-28T23:50:44+02:00  P039570      16a65edcba3 INFO    RECOVERY RECOVER DATA started
2019-04-28T23:50:44+02:00  P039570      16a65edcba3 INFO    RECOVERY command: RECOVER DATABASE UNTIL TIMESTAMP '2019-04-26 08:00:00' CLEAR LOG USING DATA PATH ('/hana_backup/R16/data/restore_1105205508/data/') USING LOG PATH ('/hana_backup/R16/data/restore_1105205508/log/') CHECK ACCESS USING FILE

status of indexserver 30660

2019-04-29T12:14:04+02:00  P039570      16a65edcba3 INFO    RECOVERY progress of service: indexserver, sc12hdbr1601:30660, volume: 7, 99% 133/135
2019-04-29T12:14:18+02:00  P039570      16a65edcba3 INFO    RECOVERY progress of service: indexserver, sc12hdbr1601:30660, volume: 7, 99% 134/135
2019-04-29T12:14:18+02:00  P039570      16a65edcba3 INFO    RECOVERY progress of service: indexserver, sc12hdbr1601:30660, volume: 7, 100% 135/135

status of indexserver 30662

2019-04-29T12:14:22+02:00  P039570      16a65edcba3 INFO    RECOVERY progress of service: indexserver, sc12hdbr1601:30662, volume: 5, 99% 154/156
2019-04-29T12:14:26+02:00  P039570      16a65edcba3 INFO    RECOVERY progress of service: indexserver, sc12hdbr1601:30662, volume: 5, 99% 155/156
2019-04-29T12:15:46+02:00  P039570      16a65edcba3 INFO    RECOVERY progress of service: indexserver, sc12hdbr1601:30662, volume: 5, 100% 156/156

 BACKUP LOG INFO (LAST FEW LINES)

2019-04-29T12:22:01+02:00  P039570      16a65edcba3 INFO    RECOVERY RECOVER DATA finished successfully, reached timestamp 2019-04-26T09:39:02+02:00, reached log position 227547169282
```
