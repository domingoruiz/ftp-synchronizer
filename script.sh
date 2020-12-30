#!/bin/bash
while true; do
    echo "[$(date)] The backup starts"
    lftp -e "mirror -R /mnt/ ${DESTINATION}" -u ${USER},${PASSWORD} ftp://${SERVER}
	echo "[$(date)] The backup finish. The next one will take place in 24 hours"
    sleep 24h
done