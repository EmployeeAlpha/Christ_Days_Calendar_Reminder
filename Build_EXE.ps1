Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'
Set-Location -Path $PSScriptRoot
Write-Host "Building Christ Days Calendar Reminder Builder..." -ForegroundColor Yellow
$python = Get-Command python -ErrorAction SilentlyContinue
if (-not $python) {
    throw "Python was not found. Install Python 3.11+ from https://www.python.org/downloads/windows/ and tick 'Add Python to PATH'."
}
python -m pip install --upgrade pip
python -m pip install pyinstaller
python -m PyInstaller --noconfirm --onefile --windowed --name "Christ_Days_Calendar_Reminder" "Christ_Days_Calendar_Reminder.py"
Write-Host "Done. EXE created at: $PSScriptRoot\dist\Christ_Days_Calendar_Reminder.exe" -ForegroundColor Green
Write-Host "Keep the EXE near Jesus_Centred_Christian_Holiday_Guide_2026.txt and the 'High Res Banners for Days of Christ' folder." -ForegroundColor Cyan
