# The activation code found in N-central
ACTIVATIONCODE=557e1b3c-14d5c7

# Server time
SCANDETAIL1NAME="SD1365447_EDF_3"
SCANDETAIL1VALUE=`cat /proc/uptime | awk '{ print $1 }'`

# JETTY thread count
SCANDETAIL2NAME="SD1365447_EDF_2"
SCANDETAIL2VALUE=`ps huH p \`cat /run/jetty.pid\` | wc -l`

# Debugging statements
#echo Activation Code: $ACTIVATIONCODE
#echo "$SCANDETAIL1NAME":\"$SCANDETAIL1VALUE\"
#echo "$SCANDETAIL2NAME":\"$SCANDETAIL2VALUE\"

LC=$HOME/EDF

# the class path for java
CPATH=$LC/axis/WEB-IF/lib/commons-collections-2.1.1.jar:$LC/axis/WEB-INF/lib/jline.jar:$LC/axis/WEB-INF/lib/axis.jar:$LC/axis/WEB-INF/lib/commons-digester.jar:$LC/axis/WEB-INF/lib/log4j-1.2.8.jar:$LC/axis/WEB-INF/lib/bcprov-jdk14-126.jar:$LC/axis/WEB-INF/lib/commons-discovery.jar:$LC/axis/WEB-INF/lib/jaxrpc.jar:$LC/axis/WEB-INF/lib/saaj.jar:$LC/axis/WEB-INF/lib/commons-beanutils.jar:$LC/axis/WEB-INF/lib/commons-logging.jar:$LC/axis/WEB-INF/lib/wsdl4j.jar:$LC/axis/WEB-INF/lib/dmsapi.jar:$LC/jar/EDFGenApp.jar:$LC/resources

java -cp "$CPATH" com.nable.server.edf.GenericApp.EDFGenericApp $ACTIVATIONCODE "$SCANDETAIL1NAME:$SCANDETAIL1VALUE" "$SCANDETAIL2NAME:$SCANDETAIL2VALUE"


