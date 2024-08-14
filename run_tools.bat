@echo off
echo Running WSL Removal Script...
call "%~dp0tools\wsl_removal\wsl_removal.bat"

echo Running WinFixIt Script...
call "%~dp0tools\win_fix_it\win_fix_it.bat"

echo All scripts have been executed.
pause
