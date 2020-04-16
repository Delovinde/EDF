# The activation code found in N-central
ACTIVATIONCODE=2de3096d-190d14

# Server time
SCANDETAIL1NAME="SD1641748_EDF_1"
SCANDETAIL1VALUE=`uptime | awk '{ print $1 }'`

# JETTY thread count
SCANDETAIL2NAME="SD1641748_EDF_2"
SCANDETAIL2VALUE=`ps huH p \`cat /run/jetty.pid\` | wc -l`

# Debugging statements
echo Activation Code: $ACTIVATIONCODE
echo "$SCANDETAIL1NAME":\"$SCANDETAIL1VALUE\"
echo "$SCANDETAIL2NAME":\"$SCANDETAIL2VALUE\"

LC=$HOME/EDF

#echo $LC

# the class path for java
#CPATH=$LC/axis/WEB-IF/lib/commons-collections-2.1.1.jar:$LC/axis/WEB-INF/lib/jline.jar:$LC/axis/WEB-INF/lib/axis.jar:$LC/axis/WEB-INF/lib/commons-digester.jar:$LC/axis/WEB-INF/lib/log4j-1.2.8.jar:$LC/axis/WEB-INF/lib/bcprov-jdk14-126.jar:$LC/axis/WEB-INF/lib/commons-discovery.jar:$LC/axis/WEB-INF/lib/jaxrpc.jar:$LC/axis/WEB-INF/lib/saaj.jar:$LC/axis/WEB-INF/lib/commons-beanutils.jar:$LC/axis/WEB-INF/lib/commons-logging.jar:$LC/axis/WEB-INF/lib/wsdl4j.jar:$LC/axis/WEB-INF/lib/dmsapi.jar:$LC/jar/EDFGenApp.jar:$LC/resources

CPATH=$LC/axis/WEB-IF/lib/*.jar:$LC/jar/EDFGenApp.jar:$LC/resources/*

#echo $CPATH

# go!  any additional scandetails can be added to the end of the line in a simillar manner
#java -verbose -cp "$CPATH" com.nable.server.edf.GenericApp.EDFGenericApp $ACTIVATIONCODE "$SCANDETAIL1NAME:$SCANDETAIL1VALUE" "$SCANDETAIL2NAME:$SCANDETAIL2VALUE"


