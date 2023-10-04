#!/bin/bash

# variable section

BACKUPDIR="/home/alexey/devops_course/backups"

PATHBACKUP="/home/alexey/backup"


# go backup to empty

cat /dev/null > backup.log


# code section

echo "Script started - $(date)" >> backup.log

tar -cfz $PATHBACKUP/test.tar.gz $BACKUPDIR >> backup.log

echo "Script finished - $(date)" >> backup.log


# transfer backup

scp backup.log alexey@localhost:/home/alexey/cold_copy
