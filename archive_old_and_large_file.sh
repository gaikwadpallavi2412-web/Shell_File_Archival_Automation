#!/bin/bash
#
#Problem statement : In below directory, find 1)files more than 2.5MB 2)files older than 30 days , compress thos files and move to archive folder
# Dir : /mnt/c/users/pallavi/desktop/courses/Linux/shellscript/Shell_Project/Ref_Reading_material
#Steps:
<< comment
1.Check if the dir is present 
2.Check if "archive" folder is present , if not create it.
3.find the files more than 2.5MB
4.find the files older than 30 days
5.compress the files received in step 3 and step 4
6.move the compressed files to archive folder
7.automate this using cron job
comment

DIR=/mnt/c/users/pallavi/desktop/courses/Linux/shellscript/Shell_Project/Ref_Reading_material

#1.Check if the dir is present
if [[ -d $DIR ]]
then
	#2.Check if "archive" folder is present , if not create it.
	if [[ ! -d $DIR/archive  ]]
	then
		echo "'archive' folder is not present, creating folder ....."
        	mkdir $DIR/archive
	fi	
else	
	echo "$DIR is not present, kindly provide valid directory path."
	exit 1
fi

#3.find the files more than 2.5MB , compress it and move to archive folder
for i in $(find $DIR -type f -size +2M)
do
	echo "[$(date)] : archiving $i to $DIR/archive"
	gzip $i
	mv $i.gz $DIR/archive
done

#4.find the files older than 30 days, compress it and move to archive folder
<< comment
for j in $(find $DIR -type f -mtime +30)
do
        echo "[$(date)] : archiving $j to $DIR/archive"
        gzip $j
        mv $j.gz $DIR/archive
done
comment

#7.automate this using cron job
# 0 16 * * * ./archive_old_and_large_file.sh >> archivelog.log


