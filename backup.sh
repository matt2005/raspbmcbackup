#!/bin/bash
#[Changes Directory]
cd /home/pi

#[Stamps the file name with a date]
TIMESTAMP=`date +%m-%d-%y-%H%M`
DIRECTORY=".xbmc"

if [ ! -d "$DIRECTORY" ]; then
  echo "Something went wrong! Cannot find xbmc directory"
  exit
fi

#./dropbox_uploader.sh upload $DUMP_PATH/$DBNAME.$TIMESTAMP.tar.gz
#Backing up files @ root
tar -czf xbmcbackup.$TIMESTAMP.tar.gz .xbmc/
cd /home/pi/raspbmc_backup
./dropbox_uploader.sh upload ../xbmcbackup.$TIMESTAMP.tar.gz .xbmc


