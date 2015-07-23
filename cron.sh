crontab -l > theCron
echo "59 23 * * * /PATH/TO/autopush.sh" >> theCron # add the job
crontab theCron
rm theCron