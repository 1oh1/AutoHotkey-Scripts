; This script lets you enable/disable your mouse for when you're watching movies or TV shows 
; and you don't want your mouse wiggling around and affecting your full scrreen experience
#SingleInstance ignore

mouse_disabled := false
Menu, Tray, Tip, Press Control + Shift + Z to disable/enable mouse movement

ToolTip, .:[Usage]:.`nPress Control + Shift + Z to disable/enable mouse movement
SetTimer, RemoveToolTip, -3000
return

RemoveToolTip:
ToolTip
return

^+z:: ; Ctrl + Shift + Z triggers this hotkey
KeyWait Control
KeyWait Shift
if mouse_disabled {
    BlockInput, MouseMoveOff ; Enable mouse movement
    mouse_disabled := false
} else {
    BlockInput, MouseMove ; Disable mouse movement
    mouse_disabled := true
}
return