@echo off
chcp 1251 >nul
timeout 1 > NUL /NOBREAK
echo[
echo Изменение реестра...
echo --------------------
cd %~dp0\ViVe
regini pre_per.txt
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
echo Если Copilot не появился - нажми ПКМ (Правая кнопка мыши) по панели задач и выбери "Показать кнопку Copilot"
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