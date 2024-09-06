#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%


personal_browser := "C:\Users\" A_UserName "\AppData\Local\Thorium\Application\thorium.exe --profile-directory=""default"""
dev_browser := "C:\Users\" A_UserName "\AppData\Local\Thorium\Application\thorium.exe --profile-directory=""Profile 1"""
work_browser := "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"
terminal := "C:\Users\" A_UserName "\AppData\Local\Microsoft\WindowsApps\wt.exe"