function AddToStartup {
    param (
        $target,
        $name
    )

    # shell:startup
    $shortcutPath = [System.Environment]::GetFolderPath('Startup') + "\" + $name + ".lnk"

    # Create shortcut
    $WshShell = New-Object -ComObject WScript.Shell
    $shortcut = $WshShell.CreateShortcut($shortcutPath)
    $shortcut.TargetPath = $target
    $shortcut.WorkingDirectory = (Split-Path $target -Parent)
    $shortcut.IconLocation = "$target,0"
    $shortcut.Save()
}

function Get-AbsPath {
    param (
        $name
    )
    
    $scriptDirectory = $PSScriptRoot
    $exePath = Join-Path -Path $scriptDirectory -ChildPath $name
    return $exePath
}

# Rebind script
$ahk_script_path = Get-AbsPath -name "desktop_switcher.ahk"
Start-Process -FilePath $ahk_script_path
AddToStartup -target $ahk_script_path -name "desktop_switcher"

# GlazeWM
# C:\Users\samin\scoop\apps\glazewm\current\GlazeWM.exe --config="C:\Users\samin\Documents\Scripts\glazewm-config.yaml"

# Opens shell:startup directory
$startup = [System.Environment]::GetFolderPath('Startup')
Invoke-Item $startup