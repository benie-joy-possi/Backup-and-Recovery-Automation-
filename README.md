##### PARTICIPANTS
- Coralie Celine
- Louise Mbiti
- Benie Joy
# Backup-and-Recovery-Automation-
## Prerequisites
Before getting started, ensure you have the following:

- Docker installed on your system
- Basic understanding of Docker concepts
- Basic command-line skills
## Steps to Running our Solution
- Firstly you will have to clone this repository
  ~~~sh
  git clone  https://github.com/benie-joy-possi/Backup-and-Recovery-Automation-.git
  ~~~
- secondly build the an image
 ~~~sh
 docker build -t recovery .
  ~~~
- thirdly run the container
~~~sh
docker run -it recovery
~~~
- After accessing the shell you run the following script to schedule the cron job that will permit the backup script to run periodically on the mock files that were added to the container during creation.
  ~~~sh
   . ./automation.sh
  ~~~
after the cron job to run the backup script is scheduled you can later on run the recovery script to get  the files to their original state
~~~sh
. /home/ubuntu/recovery.sh
~~~
- lastly check the logs in the  bacup.log file that will be created in the process of running each script
## Why Does Our Solution WORK
- we created a script that schedules a cron job to run an incremental backup script. and we equally created a recovery script that extract files to their original states. All these with their logs stored in a  backup.log  file 
