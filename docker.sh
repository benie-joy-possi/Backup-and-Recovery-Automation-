#!/bin/bash
multipass launch --name backup-vm
multipass start backup-vm
multipass shell backup-vm
sudo apt update
sudo apt install docker.io
sudo systemctl start docker
sudo systemctl enable docker
mkdir mock_files
mkdir temp
multipass mount /home/coralie-celine/temp backup-vm:/home/ubuntu/mock_files