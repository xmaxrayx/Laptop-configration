#Requires AutoHotkey v2.0 
;[version 1.0]
;[Laptop HQ] @xMaxrayx @Unbreakable-ray   at 15:29:52  on 26/11/2023   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}
;this library  to check if old .ini file exted 

#SingleInstance Force




iniCreate( filePath, unicode:="UTF-8", text:=""){
        if !FileExist(filePath){
                FileAppend(text,filePath,unicode)
            }
    }

; iniSmartRead(filePath,option, unicode?){
;     if FileExist(filePath,option){
;         return IniRead()
;     }
; }










; iniCreate(filePath, unicode?){
;     if FileExist(filePath)
;         {   
;             unicode := unicode?? "UTF-8"
;             ;return (FileRead(filePath,unicode))
;         }
;     else
;         {
;             FileAppend("",filePath,unicode)
;         }
; }




/*
;for singture function
if FileExist(A_MyDocuments . "\SWA.txt") ;is if file singture exit
    {
    signature := FileRead(A_MyDocuments . "\SWA.txt",  "UTF-8") ;sinugture
    ;MsgBox("file signature exit and loaded") ;for test
    fileSengture := "File is loaded" ;debug
    }
else ;create new sengture file 
    {
        FileAppend "
        (
        )", A_MyDocuments "\SWA.txt" , "UTF-8"
        fileSengture := "new file created"


    }
*/