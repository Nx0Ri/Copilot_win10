@echo off
chcp 1251 >nul
SETLOCAL EnableDelayedExpansion
:: CBuild � CSys - ������� ������ ������� | YBuild � YSys - ������ ������ �������
:: ������ ������ ��� ������ (����� ��������) ������� �� "Y" ��� �������
set "YSys=19045"
set "YBuild=3757"

:: ��������� ���������� � ������ ������� - ������� �� "X" ��� �������
Set "RKey=HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion"
For /F Tokens^=2* %%A In ('^""%__AppDir__%reg.exe" Query "%RKey%" /V CurrentBuildNumber^" 2^>NUL')Do Set "CSys=%%B"
For /F Tokens^=2* %%A In ('^""%__AppDir__%reg.exe" Query "%RKey%" /V UBR^" 2^>NUL')Do Set /A CBuild=%%B 2>NUL

:: ����� �� ����� (���� X(�������)<Y(������) - ����, ���� X(�������)>Y(������) - �����)
echo �������: %CSys%.%CBuild%
if "%CBuild%" LSS "%YBuild%" (
    echo ������� �� ����������. �������� ��������� ��: %YSys%.%YBuild%
	echo[
	SET /p "comp_link=������ ������� ���������� ���������� ������ ���� (������� ���-���� ��� ���������� ����������)? (y/n): "
	if "!comp_link!" EQU "y" (
	start https://catalog.s.download.windowsupdate.com/d/msdownload/update/software/updt/2023/11/windows10.0-kb5032278-x64_3a2b384f690eaa92c5030c535ac4a7e47c71a635.msu
	echo[
	echo ���������� ������ ������ �����������...
	echo �������� ��� ��� ������� ��������� � ����� ���� ���������� �����������! (�� ������ ������������ �� �� ����� ���������.)
	pause
	)
	if "!comp_link!" EQU "n" (
	echo[
	echo ����� ���� :D
	pause
	)
)
if "%CBuild%" GEQ "%YBuild%" ( echo ���� ������� ����������. ���������...
timeout 1 > NUL /NOBREAK
echo[
echo ��������� �������...
echo --------------------
cd %~dp0\ViVe
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
echo ���� Copilot �� �������� - ����� ������ ������ ���� �� ������ ����� � ������ "�������� ������ Copilot"
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
)