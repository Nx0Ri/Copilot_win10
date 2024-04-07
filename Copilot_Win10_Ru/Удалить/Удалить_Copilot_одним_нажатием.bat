@echo off
chcp 1251 >nul
timeout 1 > NUL /NOBREAK
echo[
echo Удаление функции...
echo -------------------
cd %~dp0\ViVe
vivetool /disable /id:46686174,47530616,44755019
echo[
echo[
echo Изменение реестра...
echo --------------------
regini per.txt
reg delete HKCU\SOFTWARE\Policies\Microsoft\Edge /v DnsOverHttpsMode /f
reg delete HKCU\SOFTWARE\Policies\Microsoft\Edge /v DnsOverHttpsTemplates /f
reg delete HKCU\SOFTWARE\Microsoft\Windows\Shell\Copilot /f
reg delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v ShowCopilotButton /f
echo[
echo[
echo Обновление политики Microsoft Edge из реестра...
echo ------------------------------------------------
gpupdate /force
echo Перезапуск Microsoft Edge для применения изменений...
echo -----------------------------------------------------
taskkill /F /IM msedge.exe
start msedge -restore-last-session
echo[
echo[
echo Перезагрузка проводника для удаления иконки Copilot...
echo ------------------------------------------------------
taskkill /F /IM explorer.exe
start explorer.exe
echo[
echo[
echo[
echo -----------------------------------------
echo Всё! Copilot теперь должен быть выключен.
echo Перезапустите ПК.                     
echo -----------------------------------------
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
