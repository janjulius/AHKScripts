﻿#include util/Methods.ahk
#include util/JAHK.ahk

3::ExitApp

1::
IfWinActive, Atlas
{
rockColor = 0x1A2239

i := 0

ActiveText = CREATED BY JAN JULIUS TO DO MININGGGGGGGGG


Gui, Color, Black

Gui, -caption +toolwindow +AlwaysOnTop

Gui, font, s20 bold, Calibri

Gui, add,text, vBN cWhite TransColor, Iron powerminer
Gui, add, text, vMT cWhite TransColor, %ActiveText%
Gui, add, text, vCredits cWhite TransColor, Created By: Jan Julius

WinGetPos, winX, winY, winW, winH, A

Gui, Show, AutoSize Center ,TRANS-WIN

WinSet, TransColor, Black, TRANS-WIN

Loop{
PixelSearch, locx, locy, 0, 0, 514,334, %rockColor%, 5, Fast

	if(locx > 0){
	
ActiveText = Finding Rocks (%i%/20) mined
GuiControl,,MT, %ActiveText%
		MouseMove, locx, locy, 0
		MouseClick, Right
		ImageSearch, x, y, 0,0,764,501,%A_ScriptDir%\img\minerocks.png
		if(x>0){
			MouseMove, x, y, 0
			MouseClick, Left
		} else {
			SendInput, {Up down}{Rightdown}
		Sleep, 50
		SendInput, {Up up}{Right up}
		MouseMove, 0, 0
			continue
		}
ActiveText = Mining rock %i% (%i%/20) mined
GuiControl,,MT, %ActiveText%
		
		Sleep, Rand(2000, 2500)
		i++
		ToolTip, %i%
	}
	
	if(i >= 5){
ActiveText = Dropping rocks
GuiControl,,MT, %ActiveText%
		Loop, 40{
			ImageSearch, x, y, 0,0,764,501,%A_ScriptDir%\img\ironore.png
			if(x>0){
				MouseMove, x, y, 0
				Sendinput, {Shift down}
				MouseClick, Left
				SendInput, {Shift up}
			}
		}
		Loop, 4{
			ImageSearch, x, y, 0,0,764,501,%A_ScriptDir%\img\uncruby.png
			if(x>0){
				MouseMove, x, y, 0
				Sendinput, {Shift down}
				MouseClick, Left
				SendInput, {Shift up}
			}
		}
		Loop, 4{
			ImageSearch, x, y, 0,0,764,501,%A_ScriptDir%\img\uncsapphire.png
			if(x>0){
				MouseMove, x, y, 0
				Sendinput, {Shift down}
				MouseClick, Left
				SendInput, {Shift up}
			}
		}
		Loop, 4{
			ImageSearch, x, y, 0,0,764,501,%A_ScriptDir%\img\uncemerald.png
			if(x>0){
				MouseMove, x, y, 0
				Sendinput, {Shift down}
				MouseClick, Left
				SendInput, {Shift up}
			}
		}
		Loop, 4{
			ImageSearch, x, y, 0,0,764,501,%A_ScriptDir%\img\uncdiamond.png
			if(x>0){
				MouseMove, x, y, 0
				Sendinput, {Shift down}
				MouseClick, Left
				SendInput, {Shift up}
			}
		}
		i = 0
	}
}


return


	}