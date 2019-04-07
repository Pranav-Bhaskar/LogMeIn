[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](http://makeapullrequest.com) 
# LogMeIn
A python based script which uses socket and mechenize to log you into your firewall authentication page.

# Installation - Linux
In case you dont have git-cli:
  
`sudo apt install git`
  
Clone the repo :
  
`git clone https://github.com/Pranav-Bhaskar/LogMeIn.git`
  
Open the directory :
  
`cd LogMeIn`
  
Give Permitions:
  
`sudo chmod 777 install`
  
Give installation command :
  
`sudo ./install`
  
# Installation - Windows
First install python2.7 from [here](https://www.python.org/ftp/python/2.7.13/python-2.7.13.amd64.msi).
  
While installing ensure that it is installed in C:\python27\\.
  
Download zip from [here](https://github.com/Pranav-Bhaskar/LogMeIn/archive/master.zip).
  
Double click on win_install.bat
  
Open your CMD and type the following :
  
`C:\python27\python.exe -m pip install --upgrade pip`
  
and then to install mechenize
  
`C:\python27\python.exe -m pip install --upgrade mechanize`

# Usage
This code will auto execute every time you connect to a new network.
  
If it fails to do so, to login just enter this in your terminal :

`logmein`
