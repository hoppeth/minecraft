# run from /minecraft folder
# will backup ./world to ./backup/
# screen name of running minecraft = "6325.pts-0.docker01"

backuptime=`date +%s`
screen -S 6325.pts-0.docker01 -p 0 -X stuff "/save-all^M"
time cp -r world ./backup/world_backup_$backuptime
time mksquashfs ./backup/world_backup_$backuptime ./backup/world_backup_$backuptime.sqsh
