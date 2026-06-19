# Kali Linux VM Auto-Downloader 🛡️

A sleek, automated deployment script designed for cyberdefenders to instantly provision a fresh Kali Linux Virtual Machine environment onto a Windows host system without manual browser navigation.

## How It Works
1. Creates a clean, dedicated infrastructure directory root on the C drive at C:\pOS_Infrastructure.
2. Securely streams the official, verified pre-built Kali VM package straight from the kali.org production mirrors.

## Execution Instructions

To deploy the workspace to your local system, execute these simple steps:

1. Download the deploy.ps1 script file directly from this repository onto your computer.
2. Open PowerShell on your Windows host machine as an Administrator.
3. Navigate to the directory where you saved the file, unlock local script privileges, and run the execution:

Set-ExecutionPolicy Bypass -Scope Process -Force; .\deploy.ps1

## Default Credentials
Once extracted and powered on inside VirtualBox, access the system core with the standard defaults:
* Username: kali
* Password: kali
