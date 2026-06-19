# pOS Infrastructure: Automated Kali Linux VM Provisioner
# Developed by Peegram

New-Item -Path "C:\pOS_Infrastructure" -ItemType Directory -Force
Invoke-WebRequest -Uri "https://cdimage.kali.org/kali-2026.1/kali-linux-2026.1-virtualbox-amd64.7z" -OutFile "C:\pOS_Infrastructure\kali-linux-2026.1-virtualbox-amd64.7z" -UserAgent "Mozilla/5.0"
