@echo off
chcp 1251 >nul
cd %~dp0\ViVe
vivetool /enable /id:46686174,47530616,44755019
echo[
echo ----------------------------------------------------------
echo Всё! Теперь перезапусти ПК и запусти 2_Починка_Copilot.bat
echo ----------------------------------------------------------
echo[
timeout 1 > NUL /NOBREAK
echo Подождите 5 сек. до закрытия приложения...
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