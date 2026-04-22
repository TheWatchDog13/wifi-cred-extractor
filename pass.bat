@echo off
cd /d "%~dp0"
mkdir "wifi_dumps" 2>nul
netsh wlan export profile key=clear folder="wifi_dumps" >nul
exit