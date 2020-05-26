@echo off

set WIN_VERSION=1903

call :run core PowerShell hyperv
call :run core PowerShell process
call :run core NET hyperv
call :run core NET process
call :run win PowerShell hyperv
call :run win PowerShell process
call :run win NET hyperv
call :run win NET process

goto :end

:run
set DOCKER_CMD=powershell -NoProfile -NonInteractive -ExecutionPolicy Unrestricted -Command c:\%2.ps1
@echo on
docker run --isolation=%3 -it simcorp/pc_%1_%WIN_VERSION% %DOCKER_CMD% --name nc_%1_%2 --rm > %1_%2_%3.log
@echo off
exit /b

:end
pause
