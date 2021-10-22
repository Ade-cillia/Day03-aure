#!bin/bash
#tar -czf ~/Documents/backup/backup_jeu_21_sept_2021_10_34_00_CEST.tar.gz -C ~/Images ~/Images
day="$(date +"%a"| cut '-d.' -f1)";
month="$(date +"%b"| cut '-d.' -f1)";
fullDate="backup_"$(date +"${day}_%d_${month}_%Y_%H_%M_%S_%Z")".tar.gz"
tar -czf ~/Documents/backup/${fullDate} -C ~/Images ~/Images