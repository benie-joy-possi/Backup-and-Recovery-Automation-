
FROM ubuntu:latest
RUN apt-get update && apt-get install -y  nano
RUN apt-get install -y tar
RUN apt-get install -y cron
RUN  service cron start


COPY backup_script.sh /home/ubuntu/backup_script.sh
COPY recovery.sh /home/ubuntu/recovery.sh
COPY ./source/ /home/ubuntu/source/
COPY cron_file.sh /home/ubuntu/cron_file.sh
COPY automation.sh /

RUN chmod +x /home/ubuntu/backup_script.sh
RUN chmod +x /home/ubuntu/recovery.sh
RUN chmod +x /home/ubuntu/cron_file.sh

RUN apt update && apt install -y tar

