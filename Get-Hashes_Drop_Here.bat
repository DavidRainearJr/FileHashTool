@echo off
setlocal

set SCRIPT=%~dp0Get-Hashes.ps1

powershell -ExecutionPolicy Bypass -NoProfile -File "%SCRIPT%" %*

