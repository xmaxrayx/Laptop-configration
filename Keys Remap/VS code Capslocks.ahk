#Requires AutoHotkey v2.0
#SingleInstance Force



#HotIf WinWaitActive("ahk_exe Code.exe")
app:= "ahk_exe Code.exe"

while  WinWaitActive(app){
;your code here start 


SetCapsLockState("AlwaysOff")
SetNumLockState("AlwaysOff")
CapsLock::F15
NumLock::F16



;your code here end

    try {
        if WinGetID("A") != WinGetID(app){
            break
        }  
    } 
WinWaitNotActive(app)
}



