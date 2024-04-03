@echo off
copy Reg_Install_Copilot.reg %HOMEDRIVE%\Windows
cd ViVe
vivetool /enable /id:46686174,47530616,44755019
regedit /s autorun_copilot.reg
echo .
echo ------------------------------------------
echo Done! Now RESTART PC and run Copilot.reg
echo ------------------------------------------
echo .
pause;