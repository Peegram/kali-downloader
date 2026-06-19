# Kali Linux VM Auto-Downloader

Automated deployment script designed for cyberdefenders to provision a fresh Kali Linux Virtual Machine environment onto a Windows host system without manual browser navigation.

## How It Works
1. Creates a clean infrastructure directory root on the C drive at C:\pOS_Infrastructure.
2. Streams the verified pre-built Kali VM package straight from official kali.org mirrors.
3. Verifies system path compatibility with the VirtualBox engine.

## Execution Instructions
1. Download the deploy.ps1 script file from this repository to your computer.
2. Open PowerShell on Windows as an Administrator.
3. Navigate to the folder where you saved the file and run this command:

Set-ExecutionPolicy Bypass -Scope Process -Force; .\deploy.ps1

## Default Credentials
* Username: kali
* Password: kali
