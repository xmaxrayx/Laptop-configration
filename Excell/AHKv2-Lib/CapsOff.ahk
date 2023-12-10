;xMaxrayx ;unbreakable-ray [Laptop HQ]  
#Requires AutoHotkey v2.0
#SingleInstance Force


SetCapsLockState("AlwaysOff")


;CapsOff.Send("s",true)
;
; CapsLock:: CapsOff
; CapsLock & q::CapsOff.Send("{Media_Play_Pause}",true)


class CapsOff {
    
    static Call(){
        SetCapsLockState("AlwaysOff")
        KeyWait "CapsLock", "L"
        ;SetCapsLockState("Off")
    }
    class Send {
        static Call(keys, strictMode?){
            SetCapsLockState("AlwaysOff")
            ;SetCapsLockState("Off")
            Send(keys)
            If IsSet(strictMode){
                if (strictMode) == true{
                    KeyWait "CapsLock"
                    SetCapsLockState("AlwaysOff")
                    ;MsgBox (keys)
                }
            }
            
        }   ;end of class call
    }
}

;;
class CapsOn{
    static Call(){
        SetCapsLockState ("on")
    }
}