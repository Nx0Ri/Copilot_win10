@echo off
chcp 1251 >nul
echo[
echo ��������� �������...
echo --------------------
reg delete HKCU\SOFTWARE\Policies\Microsoft\Edge /v DnsOverHttpsMode /f 
reg delete HKCU\SOFTWARE\Policies\Microsoft\Edge /v DnsOverHttpsTemplates /f
echo[
echo[
echo ���������� �������� Microsoft Edge �� �������...
echo ------------------------------------------------
gpupdate /force
echo ���������� Microsoft Edge ��� ���������� ���������...
echo -----------------------------------------------------
taskkill /F /IM msedge.exe
echo[
echo[
echo ----------------------------------------------------------------------------------------------
echo ������! �������� Microsoft Edge DNS ��������� ��� Copilot. 
echo �� ������ �� ������ ������������ Copilot. (���� ������� ������������ ����������.)   
echo ��������� ����������/3_�������_�������_Copilot.bat ����� �������� DNS ������� � Microsoft Edge                            
echo ----------------------------------------------------------------------------------------------
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
