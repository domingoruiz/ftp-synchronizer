#!/bin/bash
while true; do
    echo "[$(date)] The backup starts"
    pkill lftp
    lftp -e "mirror -R /mnt/ ${DESTINATION}" -u ${USER},${PASSWORD} ftp://${SERVER} &
    echo "[$(date)] The backup is running in the background. In ${HOURS} hours a new one will start"
    sleep ${HOURS}h
done