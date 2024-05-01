; ====================
; === INSTRUCTIONS ===
; ====================
; 1. Any lines starting with ; are ignored
; 2. After changing this config file run script file "desktop_switcher.ahk"
; 3. Every line is in the format HOTKEY::ACTION

; === SYMBOLS ===
; !     <- Alt
; +     <- Shift
; ^     <- Ctrl
; #     <- Win
; sc06F <- F24
; For more, visit https://autohotkey.com/docs/Hotkeys.htm

; === EXAMPLES ===
; !n::switchDesktopToRight()             <- <Alt> + <N> will switch to the next desktop (to the right of the current one)
; #!space::switchDesktopToRight()        <- <Win> + <Alt> + <Space> will switch to next desktop
; CapsLock & n::switchDesktopToRight()   <- <CapsLock> + <N> will switch to the next desktop (& is necessary when using non-modifier key such as CapsLock)

; ===========================
; === END OF INSTRUCTIONS ===
; ===========================

; Custom bindings
; ------------------
; sc06F & 1::switchDesktopByNumber(1)
; sc06F & 2::switchDesktopByNumber(2)
; sc06F & 3::switchDesktopByNumber(3)
; sc06F & 4::switchDesktopByNumber(4)
; sc06F & 5::switchDesktopByNumber(5)
; sc06F & 6::switchDesktopByNumber(6)
; sc06F & 7::switchDesktopByNumber(7)
; sc06F & 8::switchDesktopByNumber(8)
; sc06F & 9::switchDesktopByNumber(9)

; sc06f & n::switchDesktopToRight()
; sc06f & p::switchDesktopToLeft()
; sc06f & s::switchDesktopToRight()
; sc06f & a::switchDesktopToLeft()
; sc06f & Space::switchDesktopToLastOpened()

; sc06f & c::createVirtualDesktop()
; sc06f & d::deleteVirtualDesktop()

; Tab & 1::MoveCurrentWindowToDesktop(1)
; Tab & 2::MoveCurrentWindowToDesktop(2)
; Tab & 3::MoveCurrentWindowToDesktop(3)
; Tab & 4::MoveCurrentWindowToDesktop(4)
; Tab & 5::MoveCurrentWindowToDesktop(5)
; Tab & 6::MoveCurrentWindowToDesktop(6)
; Tab & 7::MoveCurrentWindowToDesktop(7)
; Tab & 8::MoveCurrentWindowToDesktop(8)
; Tab & 9::MoveCurrentWindowToDesktop(9)

; sc06f & Right::MoveCurrentWindowToRightDesktop()
; sc06f & Left::MoveCurrentWindowToLeftDesktop()

; Default bindings
; --------------------
; CapsLock & 1::switchDesktopByNumber(1)
; CapsLock & 2::switchDesktopByNumber(2)
; CapsLock & 3::switchDesktopByNumber(3)
; CapsLock & 4::switchDesktopByNumber(4)
; CapsLock & 5::switchDesktopByNumber(5)
; CapsLock & 6::switchDesktopByNumber(6)
; CapsLock & 7::switchDesktopByNumber(7)
; CapsLock & 8::switchDesktopByNumber(8)
; CapsLock & 9::switchDesktopByNumber(9)

; CapsLock & Numpad1::switchDesktopByNumber(1)
; CapsLock & Numpad2::switchDesktopByNumber(2)
; CapsLock & Numpad3::switchDesktopByNumber(3)
; CapsLock & Numpad4::switchDesktopByNumber(4)
; CapsLock & Numpad5::switchDesktopByNumber(5)
; CapsLock & Numpad6::switchDesktopByNumber(6)
; CapsLock & Numpad7::switchDesktopByNumber(7)
; CapsLock & Numpad8::switchDesktopByNumber(8)
; CapsLock & Numpad9::switchDesktopByNumber(9)

; CapsLock & n::switchDesktopToRight()
; CapsLock & p::switchDesktopToLeft()
; CapsLock & s::switchDesktopToRight()
; CapsLock & a::switchDesktopToLeft()
; CapsLock & tab::switchDesktopToLastOpened()

; CapsLock & c::createVirtualDesktop()
; CapsLock & d::deleteVirtualDesktop()

; CapsLock & q::MoveCurrentWindowToDesktop(1)
; CapsLock & w::MoveCurrentWindowToDesktop(2)
; CapsLock & e::MoveCurrentWindowToDesktop(3)
; CapsLock & r::MoveCurrentWindowToDesktop(4)
; CapsLock & t::MoveCurrentWindowToDesktop(5)
; CapsLock & y::MoveCurrentWindowToDesktop(6)
; CapsLock & u::MoveCurrentWindowToDesktop(7)
; CapsLock & i::MoveCurrentWindowToDesktop(8)
; CapsLock & o::MoveCurrentWindowToDesktop(9)

; CapsLock & Right::MoveCurrentWindowToRightDesktop()
; CapsLock & Left::MoveCurrentWindowToLeftDesktop()

; === INSTRUCTIONS ===
; Below is the alternate key configuration. Delete symbol ; in the beginning of the line to enable.
; Note, that  ^!1  means "Ctrl + Alt + 1" and  ^#1  means "Ctrl + Win + 1"
; === END OF INSTRUCTIONS ===

; ^!1::switchDesktopByNumber(1)
; ^!2::switchDesktopByNumber(2)
; ^!3::switchDesktopByNumber(3)
; ^!4::switchDesktopByNumber(4)
; ^!5::switchDesktopByNumber(5)
; ^!6::switchDesktopByNumber(6)
; ^!7::switchDesktopByNumber(7)
; ^!8::switchDesktopByNumber(8)
; ^!9::switchDesktopByNumber(9)

; ^!Numpad1::switchDesktopByNumber(1)
; ^!Numpad2::switchDesktopByNumber(2)
; ^!Numpad3::switchDesktopByNumber(3)
; ^!Numpad4::switchDesktopByNumber(4)
; ^!Numpad5::switchDesktopByNumber(5)
; ^!Numpad6::switchDesktopByNumber(6)
; ^!Numpad7::switchDesktopByNumber(7)
; ^!Numpad8::switchDesktopByNumber(8)
; ^!Numpad9::switchDesktopByNumber(9)

; ^!n::switchDesktopToRight()
; ^!p::switchDesktopToLeft()
; ^!s::switchDesktopToRight()
; ^!a::switchDesktopToLeft()
; ^!tab::switchDesktopToLastOpened()

; ^!c::createVirtualDesktop()
; ^!d::deleteVirtualDesktop()

; ^#1::MoveCurrentWindowToDesktop(1)
; ^#2::MoveCurrentWindowToDesktop(2)
; ^#3::MoveCurrentWindowToDesktop(3)
; ^#4::MoveCurrentWindowToDesktop(4)
; ^#5::MoveCurrentWindowToDesktop(5)
; ^#6::MoveCurrentWindowToDesktop(6)
; ^#7::MoveCurrentWindowToDesktop(7)
; ^#8::MoveCurrentWindowToDesktop(8)
; ^#9::MoveCurrentWindowToDesktop(9)

; ^#Numpad1::MoveCurrentWindowToDesktop(1)
; ^#Numpad2::MoveCurrentWindowToDesktop(2)
; ^#Numpad3::MoveCurrentWindowToDesktop(3)
; ^#Numpad4::MoveCurrentWindowToDesktop(4)
; ^#Numpad5::MoveCurrentWindowToDesktop(5)
; ^#Numpad6::MoveCurrentWindowToDesktop(6)
; ^#Numpad7::MoveCurrentWindowToDesktop(7)
; ^#Numpad8::MoveCurrentWindowToDesktop(8)
; ^#Numpad9::MoveCurrentWindowToDesktop(9)

; ^#Right::MoveCurrentWindowToRightDesktop()
; ^#Left::MoveCurrentWindowToLeftDesktop()



; === INSTRUCTIONS ===
; Additional alternative shortcut for moving current window to left or right desktop (ctrl+shift+Win+left/right)
; === END OF INSTRUCTIONS ===

; ^#+Right::MoveCurrentWindowToRightDesktop()
; ^#+Left::MoveCurrentWindowToLeftDesktop()

; Move windows between desktop
; #Left::
;   WinGetTitle, Title, A
;   WinSet, ExStyle, ^0x80, %Title%
;   Send {LWin down}{Ctrl down}{Left}{Ctrl up}{LWin up}
;   sleep, 50
;   WinSet, ExStyle, ^0x80, %Title%
;   WinActivate, %Title%
; Return

; #Right::
;   WinGetTitle, Title, A
;   WinSet, ExStyle, ^0x80, %Title%
;   Send {LWin down}{Ctrl down}{Right}{Ctrl up}{LWin up}
;   sleep, 50
;   WinSet, ExStyle, ^0x80, %Title%
;   WinActivate, %Title%
; Return