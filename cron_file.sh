#!/bin/bash
CRONJOB="0 2 * * * "/home/ubuntu/backup_script.sh""
(crontab -l | grep -F "$CRONJOB") >/dev/null 2>&1
if [ $? -eq 0 ]; then
   echo "this cron jodb exists already."
else
  (crontab -l; echo "$CRONJOB") | crontab -
   echo "Cron job was just added: "$CRONJOB""
fi
 echo "here are the current Cron jobs"
 crontab -l
