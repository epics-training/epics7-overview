TOP=..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

PROD_LIBS += pvxs Com

PROD_HOST += simplesrv
simplesrv_SRCS += simplesrv.cpp

PROD_HOST += mailbox
mailbox_SRCS += mailbox.cpp

PROD_HOST += ticker
ticker_SRCS += ticker.cpp

PROD_HOST += simpleget
simpleget_SRCS += simpleget.cpp

PROD_HOST += client
client_SRCS += client.cpp

PROD_HOST += rpc_server
rpc_server_SRCS += rpc_server.cpp

PROD_HOST += rpc_client
rpc_client_SRCS += rpc_client.cpp

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE
