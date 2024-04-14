TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = qsrvGroup
# qsrvGroup.dbd will be created and installed
DBD += qsrvGroup.dbd

# qsrvGroup.dbd will be made up from these files:
qsrvGroup_DBD += base.dbd

# Include dbd files from all support applications:
qsrvGroup_DBD += pvxsIoc.dbd

# Add all the support libraries needed by this IOC
qsrvGroup_LIBS += pvxsIoc pvxs

# qsrvGroup_registerRecordDeviceDriver.cpp derives from qsrvGroup.dbd
qsrvGroup_SRCS += qsrvGroup_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
qsrvGroup_SRCS_DEFAULT += qsrvGroupMain.cpp
qsrvGroup_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#qsrvGroup_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
qsrvGroup_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

