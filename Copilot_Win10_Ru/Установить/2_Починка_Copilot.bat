@echo off
chcp 1251 >nul
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
echo Система: %CSys%.%CBuild%
if "%CBuild%" LSS "%YBuild%" (
    echo Система не совместима. Обновите компьютер до: %YSys%.%YBuild%
	echo[
	SET /p "comp_link=Хотите скачать обновление компьютера открыв файл (открыть веб-сайт для скачивания обновления)? (y/n): "
	if "!comp_link!" EQU "y" (
	start https://catalog.s.download.windowsupdate.com/d/msdownload/update/software/updt/2023/11/windows10.0-kb5032278-x64_3a2b384f690eaa92c5030c535ac4a7e47c71a635.msu
	echo[
	echo Обновление должно начать скачиваться...
	echo Откройте его как обычную программу и ждите пока обновление установится! (Вы можете использовать ПК во время установки.)
	pause
	)
	if "!comp_link!" EQU "n" (
	echo[
	echo Тогда пока :D
	pause
	)
)
if "%CBuild%" GEQ "%YBuild%" ( echo Твоя система совместима. Продолжаю...
timeout 1 > NUL /NOBREAK
echo[
echo Изменение реестра...
echo --------------------
cd %~dp0\ViVe
timeout 1 > NUL /NOBREAK
reg add HKCU\SOFTWARE\Microsoft\Windows\Shell\Copilot\BingChat /v IsUserEligible /t REG_DWORD /d 1 /f
reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v ShowCopilotButton /t REG_DWORD /d 1 /f
timeout 1 > NUL /NOBREAK
regini del_per.txt
echo[
echo[
echo Перезагрузка проводника для установки иконки Copilot...
echo -------------------------------------------------------
taskkill /F /IM explorer.exe
start explorer.exe
echo[
echo[
echo[
echo ------------------------------------------------------------------------------------------------------------
echo Всё! Copilot теперь должен быть доступен.
echo Если Copilot не появился - нажми Правую кнопку мыши по панели задач и выбери "Показать кнопку Copilot"
echo Ты всегда можешь удалить использовав папку "Удалить"                         
echo ------------------------------------------------------------------------------------------------------------
echo[
timeout 1 > NUL /NOBREAK
echo Подождите 10 сек. до закрытия приложения...
timeout 1 > NUL /NOBREAK
echo 9 сек...
timeout 1 > NUL /NOBREAK
echo 8 сек...
timeout 1 > NUL /NOBREAK
echo 7 сек...
timeout 1 > NUL /NOBREAK
echo 6 сек...
timeout 1 > NUL /NOBREAK
echo 5 сек...
timeout 1 > NUL /NOBREAK
echo 4 сек...
timeout 1 > NUL /NOBREAK
echo 3 сек...
timeout 1 > NUL /NOBREAK
echo 2 сек...
timeout 1 > NUL /NOBREAK
echo 1 сек...
timeout 1 > NUL /NOBREAK
echo Пока :D
timeout 1 > NUL /NOBREAK
)