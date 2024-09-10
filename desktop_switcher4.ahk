#Requires AutoHotkey v1.1.33+
#SingleInstance Force ; The script will Reload if launched while already running
#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases
#KeyHistory 100 ; Ensures user privacy when debugging is not needed
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory
SendMode Input ; Recommended for new scripts due to its superior speed and reliability

; Imports
#Include %A_ScriptDir%\capslock_rebind.ahk
return

switchDesktopByNumber(targetDesktop)
{
  Run, "%A_ScriptDir%\VirtualDesktop11.exe" /Switch:%targetDesktop%,, Hide
}

MoveCurrentWindowToDesktop(desktopNumber) {
  Run, "%A_ScriptDir%\VirtualDesktop11.exe" /GetDesktop:%desktopNumber% /MoveActiveWindow /Switch,, Hide
}

;
; This function creates a new virtual desktop and switches to it
;
createVirtualDesktop()
{
  Send, #^d
}

;
; This function deletes the current virtual desktop
;
deleteVirtualDesktop()
{
  Send, #^{F4}
}

sc06f & c::createVirtualDesktop()
sc06f & d::deleteVirtualDesktop()

sc06f & 1::switchDesktopByNumber(0)
sc06f & 2::switchDesktopByNumber(1)
sc06f & 3::switchDesktopByNumber(2)
sc06f & 4::switchDesktopByNumber(3)
sc06f & 5::switchDesktopByNumber(4)
sc06f & 6::switchDesktopByNumber(5)
sc06f & 7::switchDesktopByNumber(6)
sc06f & 8::switchDesktopByNumber(7)
sc06f & 9::switchDesktopByNumber(8)

; Move windows between immediate left and right
sc06F & Left::
  WinGetTitle, Title, A
  WinSet, ExStyle, ^0x80, %Title%
  Send {LWin down}{Ctrl down}{Left}{Ctrl up}{LWin up}
  sleep, 50
  WinSet, ExStyle, ^0x80, %Title%
  WinActivate, %Title%
Return

sc06f & Right::
  WinGetTitle, Title, A
  WinSet, ExStyle, ^0x80, %Title%
  Send {LWin down}{Ctrl down}{Right}{Ctrl up}{LWin up}
  sleep, 50
  WinSet, ExStyle, ^0x80, %Title%
  WinActivate, %Title%
Return