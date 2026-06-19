# pOS Infrastructure: Automated Kali Linux VM Provisioner
# Vibe Cyberdefender Deployment Pipeline

Clear-Host
$TargetDir = "C:\pOS_Infrastructure"
$DownloadPath = "$TargetDir\kali-linux-2026.1-virtualbox-amd64.7z"

Write-Host "====================================================" -ForegroundColor Cyan
Write-Host " INITIALIZING CYBERDEFENDER PIPELINE " -ForegroundColor Cyan
Write-Host "====================================================" -ForegroundColor Cyan
Write-Host ""

# 1. Environment Infrastructure Setup
Write-Host "[+] Stage 1: Constructing clean architecture workspace..." -ForegroundColor Yellow
if (!(Test-Path -Path $TargetDir)) {
    New-Item -Path $TargetDir -ItemType Directory | Out-Null
    Write-Host "[✓] Directory created at $TargetDir" -ForegroundColor Green
} else {
    Write-Host "[✓] Directory already exists. Proceeding..." -ForegroundColor Green
}

# 2. Hypervisor Verification Engine
Write-Host ""
Write-Host "[+] Stage 2: Scanning host system for VirtualBox engine..." -ForegroundColor Yellow
$VBoxPath = "C:\Program Files\Oracle\VirtualBox\VBoxManage.exe"

if (Test-Path -Path $VBoxPath) {
    Write-Host "[✓] VirtualBox detected successfully at default path." -ForegroundColor Green
} else {
    Write-Host "[!] WARNING: VirtualBox execution core not found." -ForegroundColor Red
    Write-Host " Please ensure Oracle VirtualBox is installed on your Windows OS." -ForegroundColor DarkGray
    Write-Host " Aborting pipeline injection to protect system integrity." -ForegroundColor Red
    Exit
}

# 3. Secure Streaming Engine
Write-Host ""
Write-Host "[+] Stage 3: Streaming official pre-built Kali Linux VM package..." -ForegroundColor Yellow
Write-Host " [!] Pulling directly from official production distribution mirrors." -ForegroundColor DarkGray
Write-Host " [!] File size is 3.6 GB. Maintain network connection stability..." -ForegroundColor DarkGray

$KaliUrl = "https://cdimage.kali.org/kali-2026.1/kali-linux-2026.1-virtualbox-amd64.7z"

try {
    Invoke-WebRequest -Uri $KaliUrl -OutFile $DownloadPath -UserAgent "Mozilla/5.0"
    Write-Host "[✓] Download complete. Archive stored securely at: $DownloadPath" -ForegroundColor Green
}
catch {
    Write-Host "[-] CRITICAL ERROR: Network pipe broken during download." -ForegroundColor Red
    Write-Host " Error Details: $_" -ForegroundColor DarkGray
    Exit
}

# 4. Final Deployment Execution Instructions
Write-Host ""
Write-Host "====================================================" -ForegroundColor Green
Write-Host " PIPELINE STAGE 1 COMPLETED SUCCESSFUL " -ForegroundColor Green
Write-Host "====================================================" -ForegroundColor Green
Write-Host ""
Write-Host "[*] NEXT STEPS TO ACTIVATE THE ENVIRONMENT:" -ForegroundColor Cyan
Write-Host " 1. Open your File Explorer and navigate to: C:\pOS_Infrastructure" -ForegroundColor White
Write-Host " 2. Right-click the downloaded .7z file and extract its contents." -ForegroundColor White
Write-Host " 3. Open the extracted folder and double-click the file ending in .vbox" -ForegroundColor White
Write-Host " 4. VirtualBox will instantly open and register the machine. Just hit Start." -ForegroundColor White
Write-Host ""
Write-Host "[+] System standby. Awaiting next security protocols..." -ForegroundColor DarkGray
