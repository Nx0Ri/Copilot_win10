@echo off
echo[
echo Editing registry...
echo -------------------
reg delete HKCU\SOFTWARE\Policies\Microsoft\Edge /v DnsOverHttpsMode
reg delete HKCU\SOFTWARE\Policies\Microsoft\Edge /v DnsOverHttpsTemplates
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
echo ----------------------------------------------------------------------------
echo Done! Changed Microsoft Edge DNS settings for Copilot. 
echo You cant use Copilot now. (If you have regional block.)   
echo Use Install/3_Fix_Region_Copilot.bat for enabling DNS back in Microsoft Edge                            
echo ----------------------------------------------------------------------------
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
