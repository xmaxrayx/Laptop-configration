/************************************************************************
 * @description a function to write string with listed keys its useful for fast MsgBox
 * @file KeylistWriter.ahk
 * @author ;@xMaxrayx @unbreakable-ray  (same person)
 * @date 2023/11/25
 * @version 0.0.1
 ***********************************************************************/
#Requires AutoHotkey v2.0
#SingleInstance Force
;===authors
;@xMaxrayx @unbreakable-ray 


;==== main variable don't touch====
global keyListOutput := ""
;===================================


/*
;=How to use:
keyList("Ctrl+F3","Win+Shift+F12","ScreanShot by ShareX")
keyList("F1",,"Open the Search Home webpage")
keyList.Add("F1",,"Open the Search Home webpage") ;same the previes line but it's more readable.
MsgBox(keyList.Output()) ;show all shortcut lists
keyListOutput := "" ;clear 
keyList.Clear() ;same before this line but it's readable
*/







; ;===reset
; global keyListOutput := ""
; ;===
; keyList("ss")
; keyList.Add("no")
; ;==variables
; keyList("lol")
; MsgBox keyList.Output()

class KeyList {
        static Call(shortcuts , longcuts? , textMessage? , newLine?, symbols?  ,shortcutsPrefix? , shortcutsSuffix?  , longcutsPrefix?, longcutsSuffix?,textMessagePrefix? , textMessageSuffix? ){
            global defaultSymbols := " ==> " ;"⟶" ;"→"
            ; global keyListOutput := ""
        
            global defaultTextMessagePrefix := "  ["
            global defaultTextMessageSuffix := "]"
        
            global defaultShortcutsPrefix := "["
            global defaultShortcutsSuffix := "]"
        
            global defaultLongcutsPrefix := ""
            global defaultLongcutSuffix := ""
            

            shortcutsPrefix := shortcutsPrefix?? defaultShortcutsPrefix?? ""
            shortcutsSuffix := shortcutsSuffix?? defaultShortcutsSuffix?? ""

            textMessagePrefix := textMessagePrefix?? defaultTextMessagePrefix?? ""
            textMessageSuffix := textMessageSuffix?? defaultTextMessageSuffix?? ""

            longcutsPrefix :=  longcutsPrefix?? defaultLongcutsPrefix?? ""
            longcutsSuffix := longcutsSuffix?? defaultLongcutSuffix?? ""



        
            keysList_func(shortcuts , longcuts? , textMessage? , newLine?, symbols?  ,shortcutsPrefix? , shortcutsSuffix?  , longcutsPrefix?, longcutsSuffix?,textMessagePrefix? , textMessageSuffix? )    
        
    }
    class  Output {
        static Call(){

            return keyListOutput
        }
    }

    class Add {
        static Call(shortcuts , longcuts? , textMessage? , newLine?, symbols?  ,shortcutsPrefix? , shortcutsSuffix?  , longcutsPrefix?, longcutsSuffix?,textMessagePrefix? , textMessageSuffix? ){
            KeyList(shortcuts , longcuts? , textMessage? , newLine?, symbols?  ,shortcutsPrefix? , shortcutsSuffix?  , longcutsPrefix?, longcutsSuffix?,textMessagePrefix? , textMessageSuffix? )
        }         
    }
    class Clear {
       static Call(){
           global keyListOutput := ""

       }
       
    }
    
}






;=====

;====Func
keysList_func(shortcuts , longcuts? , textMessage? , newLine?, symbols?  ,shortcutsPrefix? , shortcutsSuffix?  , longcutsPrefix?, longcutsSuffix?,textMessagePrefix? , textMessageSuffix? ){
    newLine := newLine?? "`n"
    symbols := symbols?? defaultSymbols?? " ⟶ "
    textMessage := textMessage?? ""
    longcuts := longcuts?? ""
    

    ; ;=================================
    ; shortcutsPrefix := shortcutsPrefix?? defaultShortcutsPrefix?? ""
    ; shortcutsSuffix := shortcutsSuffix?? defaultShortcutsSuffix?? ""
    
    ; textMessagePrefix := textMessagePrefix?? defaultTextMessagePrefix?? ""
    ; textMessageSuffix := textMessageSuffix?? defaultTextMessageSuffix?? ""
    
    ; longcutsPrefix :=  longcutsPrefix?? defaultLongcutsPrefix?? ""
    ; longcutsSuffix := longcutsSuffix?? defaultLongcutSuffix?? ""
    ; ;=================================
   

    global keyListOutput := (keyListOutput . shortcutsPrefix . shortcuts . shortcutsSuffix . symbols . longcutsPrefix . longcuts . longcutsPrefix . textMessagePrefix . textMessage . textMessageSuffix . newLine)
}