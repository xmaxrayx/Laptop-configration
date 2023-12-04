#Requires AutoHotkey v2.0
;[Laptop HQ] @xMaxrayx @Unbreakable-ray   at 16:19:07  on 26/11/2023   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}
InstallKeybdHook

#SingleInstance Force
#Include "%A_ScriptDir%\AHKv2-Lib\checkIniFile.ahk"

author :="@xMaxrayx @Unbreakable-ray [Code : ReBorn]"

messageText := " `t {Can we prove we are stronger than before?}"

device := "[Laptop HQ] "

;iniDataLocation := (A_ScriptDir "\Data\data.ini")
;MsgBox(iniDataLocation)
;iniCreate(iniDataLocation)
;IniWrite("15", iniDataLocation ,"Number", )


;#HotIf WinActive("ahk_exe vivaldi.exe") || WinActive("ahk_exe devenv.exe") || WinActive("ahk_exe Code.exe") ;|| WinActive("ahk_exe Typora.exe")  ;only works for these
;
~LWin & f12::
{
    stamp( messageText, author , device ,)
    
}






;=====func
stamp(messageText, author, device,time?)
{
    time := time?? FormatTime(,"'   at' HH:mm:ss  'on' d/M/yyyy   '(24H Format)  (UTC +2)'")
   
   ;==
    stamp := (device . author . time . messageText)
    A_Clipboard := stamp
    Send '^v'
}

