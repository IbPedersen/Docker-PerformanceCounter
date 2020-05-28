@echo off

set IMAGE_VERSION=1903

call :build windows %IMAGE_VERSION% win
call :build windows/servercore %IMAGE_VERSION% core

goto end

:build
echo.
echo Using: FROM mcr.microsoft.com/%1:%2
echo on
docker build --build-arg WIN_IMAGE=%1 --build-arg WIN_VERSION=%2 -f %~dp0\Dockerfile -t simcorp/pc_%3_%2 ./image
@echo off
exit /b

:end
pause
