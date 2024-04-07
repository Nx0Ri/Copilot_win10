@echo off
chcp 1251 >nul
echo[
echo Изменение реестра...
echo --------------------
reg add HKCU\SOFTWARE\Policies\Microsoft\Edge /v DnsOverHttpsMode /t REG_SZ /d secure /f
reg add HKCU\SOFTWARE\Policies\Microsoft\Edge /v DnsOverHttpsTemplates /t REG_SZ /d https://dns.controld.com/comss /f
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
echo ------------------------------------------------------------------------------------------
echo Готово! Изменены Microsoft Edge DNS настройки для Copilot. 
echo Вы теперь можете использовать Copilot. (Если имеелась региональная блокировка.)   
echo Используй Удалить/Удалить_Починку_Региона_Copilot.bat чтобы выключить DNS в Microsoft Edge                            
echo ------------------------------------------------------------------------------------------
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