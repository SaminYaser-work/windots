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

sc06F & 1::manipulateWindow(1)
sc06F & 2::manipulateWindow(2)
sc06F & 3::manipulateWindow(3)
sc06F & 4::manipulateWindow(4)
sc06F & 5::manipulateWindow(5)
sc06F & 6::manipulateWindow(6)
sc06F & 7::manipulateWindow(7)
sc06F & 8::manipulateWindow(8)
sc06F & 9::manipulateWindow(9)

; sc06f & s::switchDesktopToRight()
; sc06f & a::switchDesktopToLeft()
; sc06f & Space::switchDesktopToLastOpened()

sc06f & c::createVirtualDesktop()
sc06f & d::deleteVirtualDesktop()

manipulateWindow(key) {
  if GetKeyState("Shift", "P") {
    MoveCurrentWindowToDesktop(key)
  }
  else {
    switchDesktopByNumber(key)
  }
}
return

; Move windows between desktop
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