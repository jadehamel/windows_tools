@echo off
dism /online /Disable-Feature /FeatureName:Microsoft-Hyper-V
timeout /t 45 > NUL
goto :start

:start