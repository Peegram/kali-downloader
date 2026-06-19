# Kali Linux VM Auto-Downloader

Automated deployment script designed to provision a fresh Kali Linux Virtual Machine environment onto a Windows host system without manual browser navigation.

## How It Works
1. Creates a clean infrastructure directory root on the C drive at C:\pOS_Infrastructure.
2. Streams the verified pre-built Kali VM package straight from official kali.org mirrors.

## Execution Instructions

CRITICAL: You must navigate your terminal into the exact folder where the downloaded script is located before running the execution command. Otherwise, Windows will not find the file.

1. Download the deploy.ps1 script file from this repository to your computer.
2. Open PowerShell on Windows as an Administrator.
3. Move your terminal into your downloads folder by executing:
   cd C:\Users\YourUsername\Downloads
4. Run the automation bypass command:

Set-ExecutionPolicy Bypass -Scope Process -Force; .\deploy.ps1

## Default Credentials
* Username: kali
* Password: kali
