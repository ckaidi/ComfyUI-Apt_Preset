@echo off

set "requirements_txt=%~dp0\requirements.txt"
set "python_exec=..\..\venv\scripts\python.exe"

echo Installing TECHNONATOR IMAGE PADDING ...

if exist "%python_exec%" (
    echo Installing with ComfyUI Portable
    for /f "delims=" %%i in (%requirements_txt%) do (
        %python_exec% -s -m pip install "%%i"
    )
) else (
    echo Installing with system Python
    for /f "delims=" %%i in (%requirements_txt%) do (
        pip install "%%i"
    )
)

pause
