@echo off
echo Checking environment variables...

:: Display current environment variables related to Application Data
echo APPDATA: %APPDATA%
echo LOCALAPPDATA: %LOCALAPPDATA%
echo COMMONAPPDATA: %COMMONAPPDATA%

:: Check if environment variables are correct
set "expected_appdata=%USERPROFILE%\AppData\Roaming"
set "expected_localappdata=%USERPROFILE%\AppData\Local"
set "expected_commonappdata=%ALLUSERSPROFILE%\Application Data"

if /I "%APPDATA%" neq "%expected_appdata%" (
  echo APPDATA path is incorrect. Please check your environment variables.
)

if /I "%LOCALAPPDATA%" neq "%expected_localappdata%" (
  echo LOCALAPPDATA path is incorrect. Please check your environment variables.
)

if /I "%COMMONAPPDATA%" neq "%expected_commonappdata%" (
  echo COMMONAPPDATA path is incorrect. Please check your environment variables.
)

:: Repair system files
echo Running System File Checker...
sfc /scannow

:: Check disk for errors
echo Checking disk for errors...
chkdsk /f

:: Pause to view results
echo Done. Please check the results above and make necessary corrections.
pause
