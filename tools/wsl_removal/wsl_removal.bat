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

echo Permanently remove the Windows Subsystem for Linux (WSL) from your system.
echo.
echo Unregistering all installed WSL distributions...
for /f "tokens=*" %%i in ('wsl --list --quiet') do (
  echo Unregistering %%i...
  wsl --unregister %%i
)

echo.
echo Disabling Windows Subsystem for Linux features...
dism.exe /online /disable-feature /featurename:Microsoft-Windows-Subsystem-Linux /norestart
dism.exe /online /disable-feature /featurename:VirtualMachinePlatform /norestart
dism.exe /online /disable-feature /featurename:Windows-Subsystem-Linux /norestart

echo.
echo Deleting leftover WSL-related files...
rd /s /q "%userprofile%\AppData\Local\Packages\CanonicalGroupLimited*"
rd /s /q "%userprofile%\AppData\Local\Lxss"
rd /s /q "%ProgramFiles%\WindowsApps\CanonicalGroupLimited*"

echo.
echo WSL has been completely removed from your system.
echo Please restart your computer to complete the process.
pause
