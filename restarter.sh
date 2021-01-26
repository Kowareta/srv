#!/bin/sh
if ss -nl | grep -v grep | grep 8080 ; then
        exit 0
else
        cd /opt/app && /opt/app/run.sh >>/var/log/app.log 2>>/var/log/app_error.log &
        #mailing program
        #/home/user/bin/simplemail.php "App was not running...  Restarted." 
        exit 0
fi
