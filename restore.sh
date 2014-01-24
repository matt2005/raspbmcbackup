#!/bin/bash
#[Changes Directory] keep the xbmcbackup.tar.gz file here

echo "This is to be done manually!! as you need to select the correct backup file from dropbox"
echo " and copy it to your /home/pi folder and  type the following commnds in sequence"
echo "windows users can use http://winscp.net/eng/index.php to copy files to pi"
echo "cd /home/pi"
echo "sudo initctl stop xbmc"
echo "tar -xzf backup.tar.gz" 
echo "rm backup.tar.gz"
echo "sudo initctl start xbmc"


