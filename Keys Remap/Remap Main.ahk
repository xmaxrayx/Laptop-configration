﻿;xMaxrayx ;unbreakable-ray

#Requires AutoHotkey v2.0
#SingleInstance Force
#Include "%A_ScriptDir%\AHKv2-Lib\CapsOff.ahk"

InstallKeybdHook
InstallMouseHook

;====

;remap the window key to f18
;~LWin::Send("{F18}")
~LWin::F18

;remap the left window key (F18) to Rwin 
~LWin & F1:: RWin

;remap the chat to discord
;
~LWin & ~c:: {
    Sleep(50)
    Send("^c")
    ;MsgBox
    
    ;Run A_ComSpec '  "cmd C:\Users\Max_Laptop\AppData\Local\Discord\Update.exe"' ,, "Hide"
    ;Run A_ComSpec '/c "C:\Users\Max_Laptop\AppData\Local\Discord\Update.exe" --processStart" ' 
    ;Run A_ComSpec '/c "C:\Users\Max_Laptop\AppData\Local\Discord\Update.exe" --processStart'~
   ; Run A_ComSpec ' ""/k C:\Users\Max_Laptop\AppData\Local\Discord\Update.exe" && "processStart Discord.exe""' 
    ;Run '"cmd C:\Users\Max_Laptop\AppData\Local\Discord\Update.exe"'
    ;C:\Users\Max_Laptop\AppData\Local\Discord\Update.exe --processStart Discord.exe
    ; Run "notepad"

    ;Run C:\Users\Trent\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Discord Inc\Discord.lnk
   ; Run A_ComSpec "C:\Users\Max_Laptop\AppData\Local\Discord\app-1.0.9024\Discord.exe"

}

;===============
;remap caps lock
;=============
~CapsLock::{
    CapsOff
    Sleep(50)
    Send("!{Tab}")
    Sleep(50)
    Send("{Media_Play_Pause}")
}
;===copy
~CapsLock & ~A::CapsOff.Send("^c")
;===pasta

~CapsLock & ~s::CapsOff.Send("^v")
;===play/pause
~CapsLock & ~q::CapsOff.Send("{Media_Play_Pause}")




