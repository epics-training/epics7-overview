#!../../bin/linux-x86_64/qsrvGroup

#- You may have to change qsrvGroup to something else
#- everywhere it appears in this file

< envPaths

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/qsrvGroup.dbd"
qsrvGroup_registerRecordDeviceDriver pdbbase

## Load record instances
dbLoadRecords("db/table.db", "N=TST:,LBL1=Label A,LBL2=Label B,PO1=0,PO2=1")

#- Set this to see messages from mySub
#-var mySubDebug 1

#- Run this to trace the stages of iocInit
#-traceIocInit

cd "${TOP}/iocBoot/${IOC}"
iocInit

## Start any sequence programs
#seq sncExample, "user=epics-dev"
