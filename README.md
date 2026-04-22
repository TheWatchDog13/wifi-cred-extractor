# Windows WiFi Credential Extractor

A lightweight batch script for extracting saved WiFi profiles and passwords on Windows systems. **For authorized security assessments and educational purposes only.**

## ⚠️ Legal Disclaimer

This tool is intended for:
- Penetration testing on systems you own or have written permission to test
- Forensic analysis of your own systems
- Educational purposes in controlled lab environments

Unauthorized use against systems you don't own is illegal.

## How It Works

The script uses legitimate Windows `netsh` commands to export saved WiFi profiles:

```batch
@echo off
cd /d "%~dp0"
mkdir "wifi_dumps" 2>nul
netsh wlan export profile key=clear folder="wifi_dumps" >nul
exit

Features :

    ✅ Exports all saved WiFi profiles to XML files

    ✅ Extracts plaintext passwords (requires admin privileges)

    ✅ Silent operation with no console output

    ✅ Creates organized output folder
