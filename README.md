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
