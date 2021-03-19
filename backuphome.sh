#!/bin/bash
echo INITIALISED HOME BACKUP:
sudo rsync -av --delete /home /mnt/backup
echo HOME BACKUP FINISHED
