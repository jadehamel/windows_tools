@echo off
echo Unregistering all installed WSL distributions...
for /f "tokens=*" %%i in ('wsl --list --quiet') do wsl --unregister %%i

echo Removing WSL features...
dism.exe /online /disable-feature /featurename:Microsoft-Windows-Subsystem-Linux /norestart
dism.exe /online /disable-feature /featurename:VirtualMachinePlatform /norestart

echo Deleting leftover WSL files...
rmdir /s /q %userprofile%\AppData\Local\Packages\CanonicalGroupLimited*
rmdir /s /q %userprofile%\AppData\Local\lxss

echo WSL has been removed completely.
pause
