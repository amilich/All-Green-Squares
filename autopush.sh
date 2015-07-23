#!/bin/sh

# creates or deletes etcdata.txt file

echo “Welcome to GitHub AutoCommit”
cd 
#NAME=`cat ~/git.txt | head -1`
#PW=`cat ~/git.txt | tail -1`
echo "GitHub name: " $NAME
cat ~/paths.txt | while read line
do 
	cd "$line"
	pwd
	if [ -s $"etcdata.txt" ]; then # check if file exists
		echo "File does exist; deleting"
		rm etcdata.txt
		git add .
		git commit -m 'Removed extraneous data'
	else
		echo "File does not exist; creating"
		echo "Data added to project" > etcdata.txt
		git add .
		git commit -m 'Added user created data'
	fi
	sleep .5
	git push origin master
done
exit