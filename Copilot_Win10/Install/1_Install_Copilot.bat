@echo off
cd %~dp0\ViVe
vivetool /enable /id:46686174,47530616,44755019
echo[
echo ----------------------------------------------
echo Done! Now RESTART PC and run 2_Fix_Copilot.bat
echo ----------------------------------------------
echo[
timeout 1 > NUL /NOBREAK
echo Wait 5 sec for closing app...
timeout 1 > NUL /NOBREAK
echo 4 sec...
timeout 1 > NUL /NOBREAK
echo 3 sec...
timeout 1 > NUL /NOBREAK
echo 2 sec...
timeout 1 > NUL /NOBREAK
echo 1 sec...
timeout 1 > NUL /NOBREAK
echo Goodbye :D
timeout 1 > NUL /NOBREAK