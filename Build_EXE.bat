@echo off
setlocal
cd /d "%~dp0"
echo Building Christ Days Calendar Reminder Builder...
echo.
python --version >nul 2>&1
if errorlevel 1 (
  echo Python was not found. Install Python 3.11+ from https://www.python.org/downloads/windows/
  pause
  exit /b 1
)
python -m pip install --upgrade pip
python -m pip install pyinstaller
python -m PyInstaller --noconfirm --onefile --windowed --name "Christ_Days_Calendar_Reminder" "Christ_Days_Calendar_Reminder.py"
echo.
echo Done. Your EXE should be here:
echo %CD%\dist\Christ_Days_Calendar_Reminder.exe
echo.
echo Keep the EXE in the same folder as:
echo Jesus_Centred_Christian_Holiday_Guide_2026.txt
echo High Res Banners for Days of Christ\
pause
