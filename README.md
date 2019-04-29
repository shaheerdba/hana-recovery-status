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

2019-04-29T12:11:06+02:00  P039570      16a65edcba3 INFO    RECOVERY progress of service: indexserver, sc12hdbr1601:30660, volume: 7, 93% 126/135
2019-04-29T12:11:17+02:00  P039570      16a65edcba3 INFO    RECOVERY progress of service: indexserver, sc12hdbr1601:30660, volume: 7, 94% 127/135
2019-04-29T12:12:20+02:00  P039570      16a65edcba3 INFO    RECOVERY progress of service: indexserver, sc12hdbr1601:30660, volume: 7, 95% 128/135
2019-04-29T12:13:02+02:00  P039570      16a65edcba3 INFO    RECOVERY progress of service: indexserver, sc12hdbr1601:30660, volume: 7, 96% 129/135
2019-04-29T12:13:36+02:00  P039570      16a65edcba3 INFO    RECOVERY progress of service: indexserver, sc12hdbr1601:30660, volume: 7, 96% 130/135
2019-04-29T12:13:45+02:00  P039570      16a65edcba3 INFO    RECOVERY progress of service: indexserver, sc12hdbr1601:30660, volume: 7, 97% 131/135
2019-04-29T12:13:55+02:00  P039570      16a65edcba3 INFO    RECOVERY progress of service: indexserver, sc12hdbr1601:30660, volume: 7, 98% 132/135
2019-04-29T12:14:04+02:00  P039570      16a65edcba3 INFO    RECOVERY progress of service: indexserver, sc12hdbr1601:30660, volume: 7, 99% 133/135
2019-04-29T12:14:18+02:00  P039570      16a65edcba3 INFO    RECOVERY progress of service: indexserver, sc12hdbr1601:30660, volume: 7, 99% 134/135
2019-04-29T12:14:18+02:00  P039570      16a65edcba3 INFO    RECOVERY progress of service: indexserver, sc12hdbr1601:30660, volume: 7, 100% 135/135

status of indexserver 30662

2019-04-29T12:13:12+02:00  P039570      16a65edcba3 INFO    RECOVERY progress of service: indexserver, sc12hdbr1601:30662, volume: 5, 94% 147/156
2019-04-29T12:13:39+02:00  P039570      16a65edcba3 INFO    RECOVERY progress of service: indexserver, sc12hdbr1601:30662, volume: 5, 95% 148/156
2019-04-29T12:13:44+02:00  P039570      16a65edcba3 INFO    RECOVERY progress of service: indexserver, sc12hdbr1601:30662, volume: 5, 96% 149/156
2019-04-29T12:13:53+02:00  P039570      16a65edcba3 INFO    RECOVERY progress of service: indexserver, sc12hdbr1601:30662, volume: 5, 96% 150/156
2019-04-29T12:14:00+02:00  P039570      16a65edcba3 INFO    RECOVERY progress of service: indexserver, sc12hdbr1601:30662, volume: 5, 97% 151/156
2019-04-29T12:14:05+02:00  P039570      16a65edcba3 INFO    RECOVERY progress of service: indexserver, sc12hdbr1601:30662, volume: 5, 97% 152/156
2019-04-29T12:14:17+02:00  P039570      16a65edcba3 INFO    RECOVERY progress of service: indexserver, sc12hdbr1601:30662, volume: 5, 98% 153/156
2019-04-29T12:14:22+02:00  P039570      16a65edcba3 INFO    RECOVERY progress of service: indexserver, sc12hdbr1601:30662, volume: 5, 99% 154/156
2019-04-29T12:14:26+02:00  P039570      16a65edcba3 INFO    RECOVERY progress of service: indexserver, sc12hdbr1601:30662, volume: 5, 99% 155/156
2019-04-29T12:15:46+02:00  P039570      16a65edcba3 INFO    RECOVERY progress of service: indexserver, sc12hdbr1601:30662, volume: 5, 100% 156/156

status of indexserver 30664

2019-04-29T12:11:20+02:00  P039570      16a65edcba3 INFO    RECOVERY progress of service: indexserver, sc12hdbr1601:30664, volume: 4, 93% 127/136
2019-04-29T12:12:22+02:00  P039570      16a65edcba3 INFO    RECOVERY progress of service: indexserver, sc12hdbr1601:30664, volume: 4, 94% 128/136
2019-04-29T12:13:33+02:00  P039570      16a65edcba3 INFO    RECOVERY progress of service: indexserver, sc12hdbr1601:30664, volume: 4, 95% 129/136
2019-04-29T12:13:37+02:00  P039570      16a65edcba3 INFO    RECOVERY progress of service: indexserver, sc12hdbr1601:30664, volume: 4, 96% 130/136
2019-04-29T12:13:55+02:00  P039570      16a65edcba3 INFO    RECOVERY progress of service: indexserver, sc12hdbr1601:30664, volume: 4, 96% 131/136
2019-04-29T12:13:59+02:00  P039570      16a65edcba3 INFO    RECOVERY progress of service: indexserver, sc12hdbr1601:30664, volume: 4, 97% 132/136
2019-04-29T12:14:11+02:00  P039570      16a65edcba3 INFO    RECOVERY progress of service: indexserver, sc12hdbr1601:30664, volume: 4, 98% 133/136
2019-04-29T12:14:21+02:00  P039570      16a65edcba3 INFO    RECOVERY progress of service: indexserver, sc12hdbr1601:30664, volume: 4, 99% 134/136
2019-04-29T12:14:28+02:00  P039570      16a65edcba3 INFO    RECOVERY progress of service: indexserver, sc12hdbr1601:30664, volume: 4, 99% 135/136
2019-04-29T12:14:33+02:00  P039570      16a65edcba3 INFO    RECOVERY progress of service: indexserver, sc12hdbr1601:30664, volume: 4, 100% 136/136

status of indexserver 30666

2019-04-29T12:11:12+02:00  P039570      16a65edcba3 INFO    RECOVERY progress of service: indexserver, sc12hdbr1601:30666, volume: 6, 93% 126/135
2019-04-29T12:11:21+02:00  P039570      16a65edcba3 INFO    RECOVERY progress of service: indexserver, sc12hdbr1601:30666, volume: 6, 94% 127/135
2019-04-29T12:12:28+02:00  P039570      16a65edcba3 INFO    RECOVERY progress of service: indexserver, sc12hdbr1601:30666, volume: 6, 95% 128/135
2019-04-29T12:13:10+02:00  P039570      16a65edcba3 INFO    RECOVERY progress of service: indexserver, sc12hdbr1601:30666, volume: 6, 96% 129/135
2019-04-29T12:13:48+02:00  P039570      16a65edcba3 INFO    RECOVERY progress of service: indexserver, sc12hdbr1601:30666, volume: 6, 96% 130/135
2019-04-29T12:13:57+02:00  P039570      16a65edcba3 INFO    RECOVERY progress of service: indexserver, sc12hdbr1601:30666, volume: 6, 97% 131/135
2019-04-29T12:14:00+02:00  P039570      16a65edcba3 INFO    RECOVERY progress of service: indexserver, sc12hdbr1601:30666, volume: 6, 98% 132/135
2019-04-29T12:14:11+02:00  P039570      16a65edcba3 INFO    RECOVERY progress of service: indexserver, sc12hdbr1601:30666, volume: 6, 99% 133/135
2019-04-29T12:14:22+02:00  P039570      16a65edcba3 INFO    RECOVERY progress of service: indexserver, sc12hdbr1601:30666, volume: 6, 99% 134/135
2019-04-29T12:14:36+02:00  P039570      16a65edcba3 INFO    RECOVERY progress of service: indexserver, sc12hdbr1601:30666, volume: 6, 100% 135/135

 BACKUP LOG INFO (LAST FEW LINES)

2019-04-29T12:22:01+02:00  P039570      16a65edcba3 INFO    RECOVERY RECOVER DATA finished successfully, reached timestamp 2019-04-26T09:39:02+02:00, reached log position 227547169282
```
