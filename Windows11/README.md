# Instructions

* Launch your Powershell or Windows Terminal as administrator
* Now copy the following script and run in powershell
```ps1
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/ClassroomTraining/Setups/main/Windows11/setup.ps1" -OutFile "setup.ps1"
./setup.ps1
```
* This script will install chocolatey, git, visual studio code, aws cli and azure cli into your system