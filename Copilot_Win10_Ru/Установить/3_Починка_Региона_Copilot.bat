@echo off
chcp 1251 >nul
echo[
echo ��������� �������...
echo --------------------
reg add HKCU\SOFTWARE\Policies\Microsoft\Edge /v DnsOverHttpsMode /t REG_SZ /d secure /f
reg add HKCU\SOFTWARE\Policies\Microsoft\Edge /v DnsOverHttpsTemplates /t REG_SZ /d https://dns.controld.com/comss /f
echo[
echo[
echo ���������� �������� Microsoft Edge �� �������...
echo ------------------------------------------------
gpupdate /force
echo ���������� Microsoft Edge ��� ���������� ���������...
echo -----------------------------------------------------
taskkill /F /IM msedge.exe
start msedge -restore-last-session
echo[
echo[
echo ------------------------------------------------------------------------------------------
echo ������! �������� Microsoft Edge DNS ��������� ��� Copilot. 
echo �� ������ ������ ������������ Copilot. (���� �������� ������������ ����������.)   
echo ��������� �������/�������_�������_�������_Copilot.bat ����� ��������� DNS � Microsoft Edge                            
echo ------------------------------------------------------------------------------------------
echo[
timeout 1 > NUL /NOBREAK
echo ��������� 10 ���. �� �������� ����������...
timeout 1 > NUL /NOBREAK
echo 9 ���...
timeout 1 > NUL /NOBREAK
echo 8 ���...
timeout 1 > NUL /NOBREAK
echo 7 ���...
timeout 1 > NUL /NOBREAK
echo 6 ���...
timeout 1 > NUL /NOBREAK
echo 5 ���...
timeout 1 > NUL /NOBREAK
echo 4 ���...
timeout 1 > NUL /NOBREAK
echo 3 ���...
timeout 1 > NUL /NOBREAK
echo 2 ���...
timeout 1 > NUL /NOBREAK
echo 1 ���...
timeout 1 > NUL /NOBREAK
echo ���� :D
timeout 1 > NUL /NOBREAK