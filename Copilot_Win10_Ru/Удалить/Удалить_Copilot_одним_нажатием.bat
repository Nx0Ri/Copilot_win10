@echo off
chcp 1251 >nul
timeout 1 > NUL /NOBREAK
echo[
echo �������� �������...
echo -------------------
cd %~dp0\ViVe
vivetool /disable /id:46686174,47530616,44755019
echo[
echo[
echo ��������� �������...
echo --------------------
regini per.txt
reg delete HKCU\SOFTWARE\Policies\Microsoft\Edge /v DnsOverHttpsMode /f
reg delete HKCU\SOFTWARE\Policies\Microsoft\Edge /v DnsOverHttpsTemplates /f
reg delete HKCU\SOFTWARE\Microsoft\Windows\Shell\Copilot /f
reg delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v ShowCopilotButton /f
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
echo ������������ ���������� ��� �������� ������ Copilot...
echo ------------------------------------------------------
taskkill /F /IM explorer.exe
start explorer.exe
echo[
echo[
echo[
echo -----------------------------------------
echo ��! Copilot ������ ������ ���� ��������.
echo ������������� ��.                     
echo -----------------------------------------
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
