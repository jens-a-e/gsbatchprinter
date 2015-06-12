REM ### drucken.bat ###
@ECHO OFF
set PATH=.\gsbatchprint32;%PATH%

REM Variablen (Edit your printer!):

set PRINTER="HP LaserJet 4250"
set SLEEP=10

set SCANS_DIR=scans
set ARCHIVE=archive
set FAILED=failed

REM ################################################

taskkill /F /IM gsbatchprint.exe

echo Automatically printing documents in: "%SCANS_DIR%\*.pdf"

gsbatchprint /P %PRINTER% /F "%SCANS_DIR%\*.pdf" /l /M "%ARCHIVE%" /E "%FAILED%" /T %SLEEP%

echo Exiting gsbatchprint loop