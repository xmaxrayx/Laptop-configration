#Requires AutoHotkey v2.0
#SingleInstance Force
;[Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 08:14:42  on 10/12/2023   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}

enableDebug := false
;===============

; ^'::{
;     A_Clipboard := (ExcelTime(6))
;     Send '^v'
; }


;=================
ExcelTime(UTC){
    outputHour := TimeChanger(UTC)
    otherTime := FormatTime(,":mm:ss tt")
    timeOutput := (outputHour . otherTime)
    debug(timeOutput)
    return(timeOutput)
}



;===============

TimeChanger(1)
TimeChanger(UTC){
    newHour :=  FormatTime(,"h")
    debug(newHour)
    newHour += UTC
    debug(newHour)
    return(newHour)
}


;===========

debug(Var:= "Hi neco neco ni is weeb cringe grow up!!!",change?){
    if IsSet(change){
        global enableDebug := change
        
    }
    

    if enableDebug == false {
    return
    }
    else {
    MsgBox(var)
    } 

}