@echo off
chcp 1251 >nul
timeout 1 > NUL /NOBREAK
echo[
echo ��������� �������...
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
echo ������������ ���������� ��� ��������� ������ Copilot...
echo -------------------------------------------------------
taskkill /F /IM explorer.exe
start explorer.exe
echo[
echo[
echo[
echo ------------------------------------------------------------------------------------------------------------
echo ��! Copilot ������ ������ ���� ��������.
echo ���� Copilot �� �������� - ����� ��� (������ ������ ����) �� ������ ����� � ������ "�������� ������ Copilot"
echo �� ������ ������ ������� ����������� ����� "�������"                         
echo ------------------------------------------------------------------------------------------------------------
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