@echo off
GOTO:MAIN

:cleanup
    rmdir  /s /q result
    rmdir  /s /q build
    rmdir  /s /q dist
    rmdir  /s /q keywords
    rmdir  /s /q robotframework_yet_another_ocr_library.egg-info
EXIT /B 0

:build
    call:cleanup
    call:venv
    call python -m build
    call python libdoc.py
EXIT /B %ERRORLEVEL%

:install
    call:build
    call python -m pip install .
EXIT /B %ERRORLEVEL%

:test
    call:install
    set /A result = %ERRORLEVEL%
    call cd atests
    call python -m robot -x rf_xunit.xml --outputdir ../result .
    set /A result = %ERRORLEVEL%
    call cd ..
    if %result%==0 set /A result = %ERRORLEVEL%
    call python parsly.py
    if %result%==0 set /A result = %ERRORLEVEL%
EXIT /B %result%

:venv
    set /A result = 0
    IF NOT EXIST .venv (
        call python -m venv .venv
        if %result%==0 set /A result = %ERRORLEVEL%
        call .venv\Scripts\activate.bat
        if %result%==0 set /A result = %ERRORLEVEL%
        call python -m pip install --upgrade pip setuptools wheel
        if %result%==0 set /A result = %ERRORLEVEL%
        call python -m pip install -r requirements-dev.txt
        if %result%==0 set /A result = %ERRORLEVEL%
    ) ELSE (
        call .venv\Scripts\activate.bat
        if %result%==0 set /A result = %ERRORLEVEL%
        call python -m pip install --upgrade pip setuptools wheel
        if %result%==0 set /A result = %ERRORLEVEL%
        call python -m pip install -r requirements-dev.txt
        if %result%==0 set /A result = %ERRORLEVEL%
    )
EXIT /B %result%

:MAIN
IF NOT "%~1" == "" call:%1
