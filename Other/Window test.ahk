#NoEnv
#Persistent
#SingleInstance, Force
SetWinDelay, 0
SendMode Input
SetBatchLines,-1
Coordmode,Mouse,Relative

Gui, 1: Margin, 0, 0
Gui, 1: +AlwaysOnTop +ToolWindow +E0x08000000 +LastFound -caption
Gui, Add, Button, x0 y0 h20 w40, Scripts
Gui, Show, x-2000 y-2000 h20, Toolbar
SetTimer, CheckActive, 100
Return

CheckActive:
Coordmode,Mouse,Relative
IfWinActive, Atlas
	{
	WinGetPos, XWin, YWin,,, Atlas
	WinMove, Toolbar ahk_class AutoHotkeyGUI,, % (XWin + 50), % (YWin + 5)
	WinSet, AlwaysOnTop, ON, Toolbar ahk_class AutoHotkeyGUI
	}
Else
WinMove, Toolbar ahk_class AutoHotkeyGUI,, -2000, -2000
Return