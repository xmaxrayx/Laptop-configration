; project start : [Offline] @xMaxrayx @Unbreakable-ray   at 17:33:05  on 8/8/2023   (24H Formart)  (UTC +2) 	 {Can we prove we are stronger than before?}



#Requires AutoHotkey v2.0
#SingleInstance Force
;#Include "C:\Users\max\Documents\Github_Unbreakable\AHK2-Lib\GUI\Warning.ahk"
;#Include "C:\Users\max\Documents\Github_Unbreakable\AHK2-Lib\AHKv2 Lib\Ahkv2 lib\guiWarningNonStop.ahk"
#Include "C:\Users\Max_Laptop\Programming\Github\xMaxrayx_Github\Backup_return(2023-11)\Backup_return-2023-11-\Github_Unbreakable\AHK2-Lib\Ahkv2 lib\guiWarningNonStop.ahk"
#hotIf WinActive("ahk_exe blender.exe")
SetNumLockState  "AlwaysOff"
InstallMouseHook
;============
global isitInsertModeactivate := true

global ForceRunNumKey := true


;=========this most first=============
#SuspendExempt ; Exempt the following hotkey from Suspend.
F4::
{
Suspend
#SuspendExempt False ;; Disable exemption for any hotkeys/hotstrings below this.

If A_IsSuspended {
     
     global Gui_Wrining_MSG := "Off"
     global Gui_Wrining_SOUND := true
     global Gui_Wrining_Text_Fix_X := 60
     global Gui_Wrining_COLOR := "red"
     global blinkColor := "0xffb5b5" ;"0x000000"
     global Custom_Gui_Warining_SOUND_GoodBey_Frequancy := 138 
     global Custom_Gui_Warining_SOUND_GoodBey_Duration := 89
     global Gui_Warining_SOUND_GoodBey := true
     global isNonStopMode := false
     global customStartwaittime := 300
    
     Gui_WriningNonStop()
	;SoundBeep , 4500
	

} Else {
       
     
     global Gui_Wrining_MSG := "On"
     global Gui_Wrining_SOUND := true
     global Gui_Wrining_Text_Fix_X := 60
     global Gui_Wrining_COLOR := "green"
     global blinkColor := "0xffb5b5" ;"0x000000"
     global Custom_Gui_Warining_SOUND_GoodBey_Frequancy := 13110
     global Custom_Gui_Warining_SOUND_GoodBey_Duration := 116
     global Gui_Warining_SOUND_GoodBey := true
     global isNonStopMode := false
     global customStartwaittime := 000
   
     Gui_WriningNonStop()
     
     
     
	
		

 
}


}
;========================== list keys

;=============select mode


; 1::{ 
;      global ForceRunNumKey
;      witchMode_Cheacker()
;      if ForceRunNumKey == true
;      {
;      Send("1")
;      global Gui_Wrining_MSG := "Vertex"
;      msgEFV_Math()
;      Gui_WriningNonStop()
;      }
; }
; 2::{
;      Send("2")
;      global Gui_Wrining_MSG := "Edge"
;      msgEFV_Math()
;      Gui_WriningNonStop()
; }
; 3::{
;      Send("3")
;      global Gui_Wrining_MSG := "Face"
;      msgEFV_Math()
;      Gui_WriningNonStop()
; }

;================================================
+r::send("k")

t::
{
     send("i")
     global isitInsertModeactivate := true
}
+t::send("t")

+6::send("n")

RButton::MButton

c::Send("y")

$+c::Send("c")

F1::Send("h")

+F1::
{
Send("{LAlt down}{h down}")
Send("{LAlt up}{h up}")    
}

^Space::Send("NumpadDot")

^`::send("{AppsKey}")

!1::Send("{Numpad1}")
!2::Send("{Numpad7}")

!3::Send("{Numpad3}")
!+3::Send("{Numpad9}")

!4::Send("{Numpad5}")

























;=====================

msgEFV_Math(){
     global Gui_Wrining_SOUND := true
     global Gui_Wrining_Text_Fix_X := 60
     global Gui_Wrining_COLOR := "Yellow"
     global blinkColor := "0xffb5b5" ;"0x000000"
     global Custom_Gui_Warining_SOUND_GoodBey_Frequancy := 138 
     global Custom_Gui_Warining_SOUND_GoodBey_Duration := 89
     global Gui_Warining_SOUND_GoodBey := true
     global isNonStopMode := false
     global customStartwaittime := 300
}


witchMode_Cheacker(){

if isitInsertModeactivate == true
     {
          itISInsertMode_math()
          global ForceRunNumKey := false
     }
}

itISInsertMode_math()
{    
     global isitInsertModeactivate
     while isitInsertModeactivate == true 
     {    

             
                
                    ;escaped()
          
     }
}


escaped(){
     f := false
     while f == false {
     if GetKeyState("LButton") || GetKeyState("Esc") || GetKeyState("Enter") == 1
          {
               f := true
          }
        
     }

    global isitInsertModeactivate := false
     SoundBeep


}


;LButton:: A_Clipboard := A_ThisHotkey
