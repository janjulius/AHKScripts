﻿charterColor = 0x230034

option = 7
cr = 


portalColor = 0x8D778D


expGained := 0
i := 0

ActiveText = noted astral rc with craft cape


Gui, Color, Black

Gui, -caption +toolwindow +AlwaysOnTop

Gui, add, Button,w50 h20 gStartButton, Start

Gui, font, s20 bold, Calibri

Gui, add,text, vBN cWhite TransColor, Ironman crafting trainer
Gui, add, text, vMT cWhite TransColor, %ActiveText%
;Gui, add, text, vCredits cWhite TransColor, Created By: Jan Julius

WinGetPos, winX, winY, winW, winH, A

Gui, Show, AutoSize Center ,TRANS-WIN

WinSet, TransColor, Black, TRANS-WIN

3::ExitApp

StartButton:

Loop{
	Loop{
		PixelSearch, locx, locy, 251, 88, 320,216, 0x824E77, 3, Fast
		;PixelSearch, locx, locy, 0, 0, 765,502, 0x898a95, 3, Fast
		
		MouseMove, locx, locy, 0
		MouseClick, Right
		
		ImageSearch, x, y, 0,0,764,501,%A_ScriptDir%\lastteleport.png
		if(x>0){
			MouseMove, x, y, 0
			MouseClick, Left
			break
			}
	}

Sleep, 5000
	
;MouseMove, 690, 142, 0
;MouseClick, Left

MouseMove, 477,357,0
MouseClick, Left
	
Sleep, 2000

MouseMove, 513,298,0
MouseClick, Left

Sleep, 3000

Send, {F2}
Sleep, 100
	ImageSearch, cx, cy, 0,0,781,541,%A_ScriptDir%\craftcape.png
	
	if(cx>0){
			MouseMove, cx,cy,0
			MouseClick, right
			Sleep, 100
			ImageSearch, tx, ty, 0,0,781,541,%A_ScriptDir%\crafttp.png
			if(tx>0){
					MouseMove, tx,ty,0
					MouseClick, Left
					Send,{F1}
			}
	}
	Sleep, 4000
	;PixelSearch, bankx, banky, 236, 174, 319, 231, 0x1A5069,3, Fast
	ImageSearch, nessx, nessy, 0,0,781,541,%A_ScriptDir%\ness.png
	
	if(nessx > 0){
			MouseMove, nessx,nessy, 0
			MouseClick, Left
			Sleep, 400
			;if(bankx > 0){
					;MouseMove, bankx, banky, 0
					MouseMove, 294,206,0
					MouseClick, Right
					Sleep, 400
					ImageSearch eobx, eoby, 0,0,764,501,%A_ScriptDir%\essonbank.png
					if(eobx>0){
							MouseMove, eobx, eoby, 0
							MouseClick, Left
							Sleep, 600
							Send, 28098456
							Send, {enter}
					}
			;}
			
	}
	
	Send, {F4}
	Sleep, 600
	
					ImageSearch hx, hy, 0,0,764,501,%A_ScriptDir%\hometeleport.png
	
	if(hx>0){
			Mousemove, hx, hy, 0
			MouseClick, Left
	}
	Send,{F1}
	Sleep, 1500
}
return
