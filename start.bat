@echo off
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk" > out.txt 2>&1
net config server /srvcomment:"Windows Server 2019 By Nobody" > out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V EnableAutoTray /T REG_DWORD /D 0 /F > out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /f /v Wallpaper /t REG_SZ /d D:\a\wallpaper.bat
net user k1sj2cn6ry9 n2Yz1Ps3Lz7Y5bN /add >nul
net localgroup administrators k1sj2cn6ry9 /add >nul
net user k1sj2cn6ry9 /active:yes >nul
net user installer /delete
diskperf -Y >nul
sc config Audiosrv start= auto >nul
sc start audiosrv >nul
ICACLS C:\Windows\Temp /grant k1sj2cn6ry9:F >nul
ICACLS C:\Windows\installer /grant k1sj2cn6ry9:F >nul
echo Successfully Installed!, If the RDP is Dead, Please Rebuild Again!
echo IP:
tasklist | find /i "ngrok.exe" >Nul && curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url || echo "Unable to get NGROK tunnel, make sure NGROK_AUTH_TOKEN is correct in Settings> Secrets> Repository secret. Maybe your previous VM is still running: https://dashboard.ngrok.com/status/tunnels "
echo Username: k1sj2cn6ry9
echo Password: n2Yz1Ps3Lz7Y5bN
echo Please Login to your RDP!!
ping -n 10 127.0.0.1 >nul
