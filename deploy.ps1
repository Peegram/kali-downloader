# pOS Infrastructure: Automated Kali Linux VM Provisioner
Clear-Host
$TargetDir = "C:\pOS_Infrastructure"
$DownloadPath = "$TargetDir\kali-linux-2026.1-virtualbox-amd64.7z"

Write-Host "====================================================" -ForegroundColor Cyan
Write-Host "         INITIALIZING DOWNLOAD PIPELINE             " -ForegroundColor Cyan
Write-Host "====================================================" -ForegroundColor Cyan

if (!(Test-Path -Path $TargetDir)) {
    New-Item -Path $TargetDir -ItemType Directory | Out-Null
}

$KaliUrl = "https://cdimage.kali.org/kali-2026.1/kali-linux-2026.1-virtualbox-amd64.7z"
Invoke-WebRequest -Uri $KaliUrl -OutFile $DownloadPath -UserAgent "Mozilla/5.0"

Write-Host "[✓] PIPELINE STAGE 1 COMPLETED SUCCESSFUL" -ForegroundColor Green
Write-Host "[*] File stored at: C:\pOS_Infrastructure" -ForegroundColor White
