# ______                      _____ _          _ _
# | ___ \                    /  ___| |        | | |
# | |_/ /____      _____ _ __\ `--.| |__   ___| | |
# |  __/ _ \ \ /\ / / _ \ '__|`--. \ '_ \ / _ \ | |
# | | | (_) \ V  V /  __/ |  /\__/ / | | |  __/ | |
# \_|  \___/ \_/\_/ \___|_|  \____/|_| |_|\___|_|_|
#  - Samin Yaser
 
# Autosuggestions
Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History
 
# Aliases
Set-Alias -Name nvi -Value neovide
Set-Alias -Name v -Value nvim
Set-Alias -Name pn -Value pnpm
# Set-Alias -Name craTsTw -Value "npx create-react-app . --template tailwindcss-typescript"
 
# Variables
$ENV:STARSHIP_CONFIG = "C:\Users\sam\Documents\windots\starship.toml"
$nvdir = "C:\Users\sam\AppData\Local\nvim"
$nvconf = "C:\Users\sam\AppData\Local\nvim\init.vim"
$ssconf = "C:\Users\sam\Documents\windots\starship.toml"
 
# Better autocomplete menu
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
 
# Styling
Clear-Host
Write-Host "
 
Iɴ ᴛʜᴇ ɴᴀᴍᴇ ᴏғ Aʟʟᴀʜ, Mᴏsᴛ Gʀᴀᴄɪᴏᴜs, Mᴏsᴛ Mᴇʀᴄɪғᴜʟ
 
"
 
# Slow as hell
# neofetch
# oh-my-posh init pwsh --config C:\Users\samin\AppData\Local\Programs\oh-my-posh\themes/atomic.omp.json | Invoke-Expression
 
Invoke-Expression (&starship init powershell)