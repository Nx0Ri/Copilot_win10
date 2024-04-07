@echo off
timeout 1 > NUL /NOBREAK
echo[
echo Removing feature...
echo -------------------
cd %~dp0\ViVe
vivetool /disable /id:46686174,47530616,44755019
echo[
echo[
echo Editing registry...
echo -------------------
regini per.txt
reg delete HKCU\SOFTWARE\Policies\Microsoft\Edge /v DnsOverHttpsMode /f
reg delete HKCU\SOFTWARE\Policies\Microsoft\Edge /v DnsOverHttpsTemplates /f
reg delete HKCU\SOFTWARE\Microsoft\Windows\Shell\Copilot /f
reg delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v ShowCopilotButton /f
echo[
echo[
echo Updating registry policies for Microsoft Edge...
echo ------------------------------------------------
gpupdate /force
echo Restarting Microsoft Edge to apply changes...
echo ---------------------------------------------
taskkill /F /IM msedge.exe
start msedge -restore-last-session
echo[
echo[
echo Rebooting explorer for deleting copilot icon...
echo -----------------------------------------------
taskkill /F /IM explorer.exe
start explorer.exe
echo[
echo[
echo[
echo -------------------------------------
echo Done! Copilot should be disabled now.
echo Reboot pc.                     
echo -------------------------------------
echo[
timeout 1 > NUL /NOBREAK
echo Wait 8 sec for closing app...
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
