#!/bin/bash

HOST=$1
TIMESTAMP=$(date +"%d_%m_%y-%H%M")
SOURCEDEV="mmcblk0"
DEST="/mnt/Backup/raspberry"

ssh -i ~/.ssh/backup_id_rsa pi@$HOST "sudo dd if=/dev/$SOURCEDEV bs=1M | gzip -" | dd of=$DEST/$HOST_$TIMESTAMP.img.gz
