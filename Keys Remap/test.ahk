#Requires AutoHotkey v2.0 
#SingleInstance Force

#HotIf WinActive("ahk_exe krit a.exe")
InstallMouseHook
~MButton::Space 
~LButton::Space