# Configuration Change tracking on Cisco Switch 
- This program is a Python program designed to create a log file whenever there is any configuration change on a Cisco Switch.
- The program compares the latest "switch show run" configuration output with its previous output line by line. 
- If the latest configuration is different compared to previous configuration, a new log will be created with the date of change on the file name. If no changes were observed, No files are created. Instead it reports saying "The files are equal."

## Prerequisites
- Python 3.11.0

## Libraries Used
>difflib

>datetime

## About the Program:
1. This program will compare log files named "SwitchShow1" & "SwitchShow2" located in Source folder. 
2. The Log file is configuration of a Cisco Switch. The program compares both the log files line by line and creates a log file, if the configuration output differs between the files.
