# The activation code found in N-central
ACTIVATIONCODE=2de3096d-190d14
ACTIVATIONCODE2=63778fe2-190d14

rando=$(( ( RANDOM % 250 )  + 1 ))

# Random junk
SCANDETAIL1NAME="SD1641748_EDF_1"
SCANDETAIL1VALUE="$rando"

# Server time
SCANDETAIL2NAME="SD1641748_EDF_3"
SCANDETAIL2VALUE=`uptime | awk ' { print $1 }'`

# Get uptime in secs a dec, turn to whole number in minutes, and back to secs
SCANDETAIL3NAME="SD1641748_EDF_5"
min=`echo $(awk '{print $1}' /proc/uptime) / 60 | bc`
SCANDETAIL3VALUE=$(expr $min \* 60)

# Disk usage in percent
SCANDETAIL4NAME="SD1641748_EDF_6"
SCANDETAIL4VALUE=`df | grep sda1 | awk '{ print $5  }' | sed 's/\%$//'`

# Debugging statements
#echo Activation Code: $ACTIVATIONCODE
#echo "$SCANDETAIL1NAME":\"$SCANDETAIL1VALUE\"
#echo "$SCANDETAIL2NAME":\"$SCANDETAIL2VALUE\"

LC=$HOME/EDF

#echo $LC

# the class path for java
CPATH=$LC/axis/WEB-IF/lib/commons-collections-2.1.1.jar:$LC/axis/WEB-INF/lib/jline.jar:$LC/axis/WEB-INF/lib/axis.jar:$LC/axis/WEB-INF/lib/commons-digester.jar:$LC/axis/WEB-INF/lib/log4j-1.2.8.jar:$LC/axis/WEB-INF/lib/bcprov-jdk14-126.jar:$LC/axis/WEB-INF/lib/commons-discovery.jar:$LC/axis/WEB-INF/lib/jaxrpc.jar:$LC/axis/WEB-INF/lib/saaj.jar:$LC/axis/WEB-INF/lib/commons-beanutils.jar:$LC/axis/WEB-INF/lib/commons-logging.jar:$LC/axis/WEB-INF/lib/wsdl4j.jar:$LC/axis/WEB-INF/lib/dmsapi.jar:$LC/jar/EDFGenApp.jar:$LC/resources

#echo $CPATH

# go!  any additional scandetails can be added to the end of the line in a simillar manner
java -cp $CPATH com.nable.server.edf.GenericApp.EDFGenericApp $ACTIVATIONCODE "$SCANDETAIL1NAME:$SCANDETAIL1VALUE" "$SCANDETAIL2NAME:$SCANDETAIL2VALUE" "$SCANDETAIL3NAME:$SCANDETAIL3VALUE" "$SCANDETAIL4NAME:$SCANDETAIL4VALUE"

java -cp $CPATH -jar $LC/jar/EDFGenApp.jar $ACTIVATIONCODE2 "$SCANDETAIL1NAME:$SCANDETAIL1VALUE" "$SCANDETAIL2NAME:$SCANDETAIL2VALUE" "$SCANDETAIL3NAME:$SCANDETAIL3VALUE" "$SCANDETAIL4NAME:$SCANDETAIL4VALUE"

