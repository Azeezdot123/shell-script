# Script_01
## Task
Create a bash script to run at every hour, saving system memory (RAM) usage to a specified file and at midnight it sends the content of the file to a specified email address, then starts over for the new day.

## Solutions
I create the bash to get the system memory info every hour with a *cronjob* and save it to a log file then a function get call in the bash script if it midnight to send a mail that contain the log file as the body to the address of the email I already set in my environment variable.
Then if the mail function finish successfully it delete the logfile.
<!-- ```bash ``` -->