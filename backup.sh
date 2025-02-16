#!/bin/bash
#
#


<<info 

aumate backuop

eg.
./backup.sh <source> <dest>

src /home/ubuntu/scripts
dest /home/ubuntu/backups

info

src=$1
dest=$2

timestamp=$(date '+%y-%m-%d-%h-%m')

zip -r "$dest/backup-$timestamp.zip" $src

aws s3 sync backups/ "$dest" s3://tws-backups-dev

echo "backups completed and uploaded to S3 done"
