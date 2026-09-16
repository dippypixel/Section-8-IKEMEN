@echo off
setlocal

set "inputFile=anim.txt"
set "tempFile=temp.txt"

:: Check if anim.txt exists in the current directory
if not exist "%inputFile%" (
    echo File anim.txt not found.
    exit /b
)

:: Create or clear the temp file
> "%tempFile%" (
    for /f "usebackq delims=" %%A in ("%inputFile%") do (
        rem Check if the line does not start with ";"
        if not "%%A"=="!%%A:~0,1!"==";" echo %%A
    )
)

:: Replace the original file with the temp file
move /y "%tempFile%" "%inputFile%" >nul
echo All lines starting with ';' have been removed from anim.txt.

endlocal
