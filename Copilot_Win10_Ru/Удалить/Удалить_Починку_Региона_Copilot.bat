@echo off
chcp 1251 >nul
echo[
echo Изменение реестра...
echo --------------------
reg delete HKCU\SOFTWARE\Policies\Microsoft\Edge /v DnsOverHttpsMode /f 
reg delete HKCU\SOFTWARE\Policies\Microsoft\Edge /v DnsOverHttpsTemplates /f
echo[
echo[
echo Обновление политики Microsoft Edge из реестра...
echo ------------------------------------------------
gpupdate /force
echo Перезапуск Microsoft Edge для применения изменений...
echo -----------------------------------------------------
taskkill /F /IM msedge.exe
echo[
echo[
echo ----------------------------------------------------------------------------------------------
echo Готово! Изменены Microsoft Edge DNS настройки для Copilot. 
echo Вы теперь не можете использовать Copilot. (Если имеется региональная блокировка.)   
echo Используй Установить/3_Починка_Региона_Copilot.bat чтобы включить DNS обратно в Microsoft Edge                            
echo ----------------------------------------------------------------------------------------------
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
