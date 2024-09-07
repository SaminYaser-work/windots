#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

; Works in tandem with https://github.com/dankrusi/WindowsVirtualDesktopHelper
; So that needs to be installed first and configured. Hotkey settings must be turned on and set to Alt+Shift+#
; This script rebinds some keys of that app and adds some additional funcitonalities

#Include %A_ScriptDir%\capslock_rebind.ahk

createVirtualDesktop()
{
    Send, #^d
}

deleteVirtualDesktop()
{
    Send, #^{F4}
}

; Main
SetKeyDelay, 75


;--------------------
; Keybindings
;--------------------

sc06f & 1::Send !+1
sc06f & 2::Send !+2
sc06f & 3::Send !+3
sc06f & 4::Send !+4
sc06f & 5::Send !+5
sc06f & 6::Send !+6
sc06f & 7::Send !+7
sc06f & 8::Send !+8
sc06f & 9::Send !+9
sc06f & 0::Send !+0
sc06F & c::createVirtualDesktop()
sc06F & d::deleteVirtualDesktop()


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
