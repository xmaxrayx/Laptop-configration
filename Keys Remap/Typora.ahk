#Requires AutoHotkey v2.0
;xMaxrayx ;Unbreakable-ray

InstallKeybdHook

;== library
#SingleInstance Force
#Include "%A_ScriptDir%\AHKv2-Lib\CapsOff.ahk"

;==Typora
#HotIf WinActive("ahk_exe Typora.exe")

~LWin & 3::
CapsLock & 3:: CapsOff.Send("- [ ] ")