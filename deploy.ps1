# pOS Infrastructure: Automated Kali Linux VM Provisioner
# Developed by Peegram

Clear-Host
Write-Host "====================================================" -ForegroundColor Cyan
Write-Host "         INITIALIZING DOWNLOAD PIPELINE             " -ForegroundColor Cyan
Write-Host "====================================================" -ForegroundColor Cyan

# Force create the directory infrastructure
New-Item -Path "C:\pOS_Infrastructure" -ItemType Directory -Force | Out-Null

# Securely stream the official production archive
Invoke-WebRequest -Uri "https://cdimage.kali.org/kali-2026.1/kali-linux-2026.1-virtualbox-amd64.7z" -OutFile "C:\pOS_Infrastructure\kali-linux-2026.1-virtualbox-amd64.7z" -UserAgent "Mozilla/5.0"

Write-Host ""
Write-Host "[✓] PIPELINE STAGE 1 COMPLETED SUCCESSFULLY" -ForegroundColor Green
Write-Host "[*] Target Core Saved to C:\pOS_Infrastructure" -ForegroundColor Green
