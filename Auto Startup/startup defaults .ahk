#Requires AutoHotkey v2.0
#SingleInstance Force
;[Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 09:35:42  on 28/12/2023   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}

global enableDebug := 0

;Run("C:\Program Files\Windscribe\Windscribe.exe -os_restart" , , ,&windscribePID)

; autostartRun("C:\Program Files\Windscribe\Windscribe.exe -os_restart", 10000 ,1 )
; autostartRun('"C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" --no-startup-window --win-session-start' ,2000)


autostartList(A_ScriptDir . "\StartupAppsCommands.txt")


autostartList(filePath){

    ; try {
        
        fileTextList := FileRead(filePath)
        fileTextList := StrReplace(fileTextList , "Command" , "")

        MsgBox fileTextList
        fileTextList := StrSplit(fileTextList , "`n")
        loop fileTextList.Length
            {
                
                MsgBox "curre" fileTextList[A_Index]
                if 0 != RegExMatch(fileTextList[A_Index] , ".lnk" ){
                    MsgBox "Found .lnk" . fileTextList[A_Index]
                    fileTextList.RemoveAt(A_Index)
                }else if "" == fileTextList[A_Index] {
                MsgBox "found empty" . fileTextList[A_Index] . " at : [" A_Index "]"
                fileTextList.RemoveAt(A_Index)
                A_Index +=1
    
                }

                
               
            }
        
            ; loop fileTextList.Length
            ; {
            ;     MsgBox fileTextList[A_Index]
            ;  ;   autostartRun(fileTextList[A_Index])
            ; }
   

    ; } catch Error as e {
    ;     MsgBox e.Message
    ; }








}

    





autostartRun(appPath,timeoutWait?,appWinWait := 0){
    Run((appPath),,,&appPID)



    if appWinWait == true {
    WinWait("ahk_pid " appPID)
    }



    if IsSet(timeoutWait){
    Sleep(timeoutWait)
    }
    



    if enableDebug == true {
        MsgBox appPID
    }
    
}

;WinWaitActive("ahk_exe Windscribe")
