#!/bin/bash
# Reads a live stream and copies its contents to a file

NOW=`date +%Y%m%d%H%M`;
DLDIR="~/"
EXTENSION="wmv"
FORMAT="asf"

if [ $# -ne 3 ]
then
    echo "Usage: savestream.sh [stream url] [duration] [identifier]"
    exit 1
else
    STREAM_URL=${1}
    DURATION=${2}
    IDENTIFIER=${3}
    mencoder -forceidx -oac copy -ovc copy -endpos ${DURATION} -vf harddup ${STREAM_URL} \
    -of lavf -lavfopts format=${FORMAT} -o ${DLDIR}/${IDENTIFIER}${NOW}.${EXTENSION}
fi

exit 0
