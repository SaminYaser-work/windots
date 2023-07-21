;--------------------------
; Rebinds
;--------------------------

; Caps lock is rebound to F24 key using sharpkeys
; sc06F = F24 Key

; Rebinds F24 to Esc
sc06F::Esc

; Mic mute/unmute for teams
; ScrollLock::^+m

; Vim-like bindings
sc06F & h::Left
sc06F & j::Down
sc06F & k::Up
sc06F & l::Right

;--------------------------
; Hotkeys
;--------------------------

; Browser Profiles
;~~~~~~~~~~~~~~~~~~~~~~~~~~

; ; Default Profile
; sc06F & d::
; Run, "C:\Users\samin\Documents\Chromium Profiles\Default.lnk"
; return
; ; Google Profile
; sc06F & g::
; Run, "C:\Users\samin\Documents\Chromium Profiles\Google.lnk"
; return
; ; Facebook Profile
; sc06F & f::
; Run, "C:\Users\samin\Documents\Chromium Profiles\Facebook.lnk"
; return
; ; Microsoft/work Profile
; sc06F & m::
; Run,"C:\Users\samin\Documents\Chromium Profiles\Microsoft Edge.lnk" 
; return

; Edge Personal Profile
;sc06F & g::
;Run "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" --profile-directory="Default"
;return

; Firefox Personal
sc06F & g::
Run "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Firefox.lnk"
return

; Edge Work Profile
sc06F & m::
Run "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" --profile-directory="Profile 1"
return


; Windows Terminal
sc06F & t::
Run, "C:\Users\samin\AppData\Local\Microsoft\WindowsApps\wt.exe"
return

; Visual Studio Code
sc06F & v::
Run, "C:\Users\samin\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Visual Studio Code\Visual Studio Code.lnk"
return

;Obsidian
sc06F & n::
Run, "C:\Users\samin\AppData\Local\Obsidian\Obsidian.exe"
return

;Notes
; sc06f & i::Run Edit "C:\Users\samin\Documents\Rainmeter\Skins\Elegante 2.0\Notes.txt"

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

; Powertoys Shortcuts
;~~~~~~~~~~~~~~~~~~~~~~~~~~

; Powertoys Run
; sc06F & r::#^r

; Colorpicker
; sc06F & c::#+c

; Fancy Zones
;sc06F & z::#<+z

; Shortcut guide
;sc06F & /::#^!+/


;--------------------------
; Hotstrings
;--------------------------

; Mails
:*:]mailp::saminthekingyaser@gmail.com

:*:]mailw::saminyaserwork@gmail.com

:*:]mailo::saminthekingyaser@outlook.com

:*:]mails::19-39442-1@student.aiub.edu


; Socials
:*:]facebook::https://www.facebook.com/RealSaminYaser/
:*:]github::https://github.com/SaminYaser-work/
:*:]linkedin::https://www.linkedin.com/in/RealSaminYaser/

; Islam
:*:]salam::Assalaamu Alaikum
:*:]xsalam::Assalaamu Alaikum Warahmatullahi Wabarakatuh
:*:]rsalam::Wa Alaykumus Salam
:*:]arsalam::ٱلسَّلَامُ عَلَيْكُمْ وَرَحْمَةُ ٱللَّٰهِ وَبَرَكَاتُهُ
:*:]thank::جَزَاكَ ٱللَّٰهُ خَيْرًا


:*:]eins::Insha'Allah
:*:]ins::إِنْ شَاءَ ٱللَّٰهُ

:*:]ealh::Alhamdulillah
:*:]alh::ٱلْحَمْدُ لِلَّٰهِ

:*:]ssaw::{U+FDFA}
:*:]saw::صَلَّى ٱللَّٰهُ عَلَيْهِ وَسَلَّمَ

:*:]allah::Allah {U+FDFB}

:*:]sbis::{U+FDFD}
:*:]bis::بِسْمِ ٱللَّٰهِ ٱلرَّحْمَٰنِ ٱلرَّحِيمِ

:*:]eas::'Alayhi s-salam
:*:]as::عَلَيْهِ ٱلسَّلَامُ