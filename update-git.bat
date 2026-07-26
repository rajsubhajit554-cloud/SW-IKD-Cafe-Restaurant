@echo off
echo ====================================
echo   SW IKD Cafe ^& Restaurant Git Update
echo ====================================
echo.

git status

echo.
set /p commit_msg="Enter commit message (or press ENTER for default 'Website update'): "
if "%commit_msg%"=="" set commit_msg=Website update - %date% %time%

echo.
echo Adding files...
git add .

echo.
echo Committing changes...
git commit -m "%commit_msg%"

echo.
echo Pushing to GitHub (origin main)...
git push origin main

echo.
echo ====================================
echo   Git Update Completed Successfully!
echo ====================================
pause
