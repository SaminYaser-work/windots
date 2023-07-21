$path = "C:\Users\samin\Documents\ObsidianVault";
$time = Get-Date -UFormat "%d/%m/%Y %R";

Set-Location -Path $path;

# Git Commands
git add .;
git commit -m "LAPTOP - $time";
git push;

# Closing Powershell Window
# Stop-Process -Id $PID;