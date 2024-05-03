;--------------------------
; Rebinds
;--------------------------

; Caps lock is rebound to F24 key using sharpkeys
; sc06F = F24 Key
HotKey sc06F Up, SendEsc

SendEsc:
    SendInput, {Esc}
return

; Vim-like bindings
sc06F & h::Left
sc06F & j::Down
sc06F & k::Up
sc06F & l::Right


; App Launch Shortcuts
;~~~~~~~~~~~~~~~~~~~~~~~~~~

; Personal Browser
sc06F & g::
    personal_browser := "C:\Users\" A_UserName "\AppData\Local\Thorium\Application\thorium.exe --profile-directory=""default"""
    Run, %personal_browser%
return

; Work Browser
sc06F & m::
    work_browser := "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe --profile-directory=""Profile 1"""
    Run, %work_browser%
return

; Windows Terminal
sc06F & t::
    terminal := "C:\Users\" A_UserName "\AppData\Local\Microsoft\WindowsApps\wt.exe"
    Run, %terminal%
return

; Close program
sc06F & q::
    WinGetTitle, Title, A
    PostMessage, 0x112, 0xF060,,, %Title%
return

; Keep window always on top
; AppsKey::
sc06F & p::
    WinSet, AlwaysOnTop, , A
return


;------------------------
; GlazeWM
;------------------------

; sc06F & o::
;     Process, Exist, GlazeWM.exe
;     pid := ErrorLevel  ; ErrorLevel contains the PID of the process if it exists, 0 otherwise

;     if (pid == 0) {
;         Run, "C:\Users\samin\scoop\apps\glazewm\current\GlazeWM.exe" --config="C:\Users\samin\Documents\Scripts\glazewm-config.yaml"
;     } else {
;         MsgBox, "GlazeWM is already running!"
;     }
; return 

; GlazeWM Bindings
; sc06F & 1::SendGlazeWMInput(1)
; sc06F & 2::SendGlazeWMInput(2)
; sc06F & 3::SendGlazeWMInput(3)
; sc06F & 4::SendGlazeWMInput(4)
; sc06F & 5::SendGlazeWMInput(5)
; sc06F & 6::SendGlazeWMInput(6)
; sc06F & 7::SendGlazeWMInput(7)
; sc06F & 8::SendGlazeWMInput(8)
; sc06F & 9::SendGlazeWMInput(9)

; sc06F & h::SendGlazeWMInput("h")
; sc06F & j::SendGlazeWMInput("j")
; sc06F & k::SendGlazeWMInput("k")
; sc06F & l::SendGlazeWMInput("l")

; sc06F & b::SendGlazeWMInput("b")
; sc06F & x::SendGlazeWMInput("x")
; sc06F & v::SendGlazeWMInput("v")
; sc06F & f::SendGlazeWMInput("f")

; sc06F & r::SendGlazeWMInput("r")
; sc06F & e::SendGlazeWMInput("e")

; sc06F & Up::SendGlazeWMInput(Up)
; sc06F & Down::SendGlazeWMInput(Down)
; sc06F & Right::SendGlazeWMInput(Right)
; sc06F & Left::SendGlazeWMInput(Left)

; SendGlazeWMInput(num) {
;     if GetKeyState("Shift", "P") {
;         SendInput, {F23 Down}
;         Sleep, 5
;         SendInput, {F24 Down}
;         Sleep, 5
;         SendInput, {%num%}
;         Sleep, 5
;         SendInput, {F24 Up}
;         Sleep, 5
;         SendInput, {F23 Up}
;     } else if GetKeyState("Ctrl", "P") {
;         SendInput, {F22 Down}
;         Sleep, 5
;         SendInput, {F24 Down}
;         Sleep, 5
;         SendInput, {%num%}
;         Sleep, 5
;         SendInput, {F24 Up}
;         Sleep, 5
;         SendInput, {F22 Up}
;     }
;     else {
;         SendInput, {F24 Down}
;         Sleep, 5
;         SendInput, {%num%}
;         Sleep, 5
;         SendInput, {F24 Up}
;     }
; }
; return