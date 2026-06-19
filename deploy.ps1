$code = @'
Clear-Host
$TargetDir = "C:\pOS_Infrastructure"
$DownloadPath = "$TargetDir\kali-linux-2026.1-virtualbox-amd64.7z"
Write-Host "====================================================" -ForegroundColor Cyan
Write-Host " INITIALIZING CYBERDEFENDER PIPELINE " -ForegroundColor Cyan
Write-Host "====================================================" -ForegroundColor Cyan
if (!(Test-Path -Path $TargetDir)) {
    New-Item -Path $TargetDir -ItemType Directory | Out-Null
}
$VBoxPath = "C:\Program Files\Oracle\VirtualBox\VBoxManage.exe"
if (Test-Path -Path $VBoxPath) {
    Write-Host "[✓] VirtualBox detected successfully." -ForegroundColor Green
} else {
    Write-Host "[!] VirtualBox core not found." -ForegroundColor Red
    Exit
}
$KaliUrl = "https://cdimage.kali.org/kali-2026.1/kali-linux-2026.1-virtualbox-amd64.7z"
try {
    Invoke-WebRequest -Uri $KaliUrl -OutFile $DownloadPath -UserAgent "Mozilla/5.0"
    Write-Host "[✓] Download complete: $DownloadPath" -ForegroundColor Green
} catch {
    Write-Host "[-] Network pipe broken." -ForegroundColor Red
    Exit
}
Write-Host "====================================================" -ForegroundColor Green
Write-Host " PIPELINE STAGE 1 COMPLETED SUCCESSFUL " -ForegroundColor Green
Write-Host "====================================================" -ForegroundColor Green
'@
Set-Content -Path ".\deploy.ps1" -Value $code -Encoding UTF8
