@echo off
For /F "UseBack delims=" %%a in ("Files.txt") do if not exist "%%a" >> checked.txt echo %%a