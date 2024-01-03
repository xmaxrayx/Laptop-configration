


#Requires AutoHotkey v2.0
#SingleInstance Force
#Include "%A_ScriptDir%\AHKv2-Lib\CapsOff.ahk"
#Include  "%A_ScriptDir%\AHKv2-Lib\KeylistWriter.ahk"
#Include  "%A_ScriptDir%\MaxAHKv2-Lib\TimeChangerUTC.ahk"




InstallKeybdHook("true")

;====Excel Active
#HotIf WinActive("ahk_exe EXCEL.EXE") || WinActive("ahk_exe Code.exe")
;=================

KeyList("LWwin + F2" , , "Shortcuts list")
LWin & F2::MsgBox(KeyList.Output())

;re-name 
KeyList("Alt + Enter", "F2" ,"re-name")
KeyList.Output()
^Enter::Send("{F2}")


;==allien text
alienMathFunc(key){
    Send("!h")
    Sleep(50)
    Send(key)
}

;=middle

;keysListForExcel_Math("CapsLock + M >`t`t M")

CapsLock & M::{
    CapsOff
   alienMathFunc("ac")
}
LWin & M::{
    alienMathFunc("ac")
}




;==Math fun fast writing

excelMathWriter(X){
    Send("{F2}")
    Sleep(50)
    Send("=" . X . "()")
    Sleep(50)
    Send("{Left}")
}

LWin & =::excelMathWriter("SUM")


;=time changer

^+;::
{
    A_Clipboard := (ExcelTime(1))
    Send '^v'
}
