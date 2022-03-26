@echo off

:: if you need put a port difee only the port exemple: 4001 DON'T PUT NULL!
set port=4000

:: if you use the github gh-pages stay null this config to no start with base url
set baseurl=""


:: starting with configs
cd .
echo %cd%
jekyll s --port=%port% --baseurl=%baseurl%