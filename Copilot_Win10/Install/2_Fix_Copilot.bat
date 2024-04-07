@echo off
timeout 1 > NUL /NOBREAK
echo[
echo Editing registry...
echo -------------------
cd %~dp0\ViVe
regini pre_per.txt
timeout 1 > NUL /NOBREAK
reg add HKCU\SOFTWARE\Microsoft\Windows\Shell\Copilot\BingChat /v IsUserEligible /t REG_DWORD /d 1 /f
reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v ShowCopilotButton /t REG_DWORD /d 1 /f
timeout 1 > NUL /NOBREAK
regini del_per.txt
echo[
echo[
echo Rebooting explorer for installing copilot icon...
echo -------------------------------------------------
taskkill /F /IM explorer.exe
start explorer.exe
echo[
echo[
echo[
echo -----------------------------------------------------------------------------------------------------
echo Done! Copilot should be available now.
echo If Copilot didnt show up - press RMB (Right mouse button) on taskbar and choose "Show copilot button"
echo You always can uninstall it by using "Uninstall" folder                            
echo -----------------------------------------------------------------------------------------------------
echo[
timeout 1 > NUL /NOBREAK
echo Wait 10 sec for closing app...
timeout 1 > NUL /NOBREAK
echo 9 sec...
timeout 1 > NUL /NOBREAK
echo 8 sec...
timeout 1 > NUL /NOBREAK
echo 7 sec...
timeout 1 > NUL /NOBREAK
echo 6 sec...
timeout 1 > NUL /NOBREAK
echo 5 sec...
timeout 1 > NUL /NOBREAK
echo 4 sec...
timeout 1 > NUL /NOBREAK
echo 3 sec...
timeout 1 > NUL /NOBREAK
echo 2 sec...
timeout 1 > NUL /NOBREAK
echo 1 sec...
timeout 1 > NUL /NOBREAK
echo Goodbye :D
timeout 1 > NUL /NOBREAK
