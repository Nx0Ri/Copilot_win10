@echo off
@echo off
SETLOCAL EnableDelayedExpansion
:: CBuild и CSys - текущая версия системы | YBuild и YSys - нужная версия системы
:: Нужная версия для работы (Можно изменить) назовем ее "Y" для понятия
set "YSys=19045"
set "YBuild=3757"

:: Получение информации о версии системы - назовем ее "X" для понятия
Set "RKey=HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion"
For /F Tokens^=2* %%A In ('^""%__AppDir__%reg.exe" Query "%RKey%" /V CurrentBuildNumber^" 2^>NUL')Do Set "CSys=%%B"
For /F Tokens^=2* %%A In ('^""%__AppDir__%reg.exe" Query "%RKey%" /V UBR^" 2^>NUL')Do Set /A CBuild=%%B 2>NUL

:: Вывод на экран (если X(текущая)<Y(нужная) - низя, если X(текущая)>Y(нужная) - можно)
echo Your system: %CSys%.%CBuild%
if "%CBuild%" LSS "%YBuild%" (
    echo Your system is incompatible. Update your pc to: %YSys%.%YBuild%
	echo[
	SET /p "comp_link=Do you want to download update just by opening file (open website)? (y/n): "
	if "!comp_link!" EQU "y" (
	start https://catalog.s.download.windowsupdate.com/d/msdownload/update/software/updt/2023/11/windows10.0-kb5032278-x64_3a2b384f690eaa92c5030c535ac4a7e47c71a635.msu
	echo[
	echo Update should start downloading now...
	echo Open it as normal program and wait while update is installing! (You can use your pc while updating)
	pause
	)
	if "!comp_link!" EQU "n" (
	echo[
	echo Goodbye then :D
	pause
	)
)
if "%CBuild%" GEQ "%YBuild%" ( echo Your system is compatible. Continuing...
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
echo If Copilot didnt show up - press Right mouse button on taskbar and choose "Show copilot button"
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
)