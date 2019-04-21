SpotColor = 0xB98A7D

1::
loop{
	PixelSearch, ox, oy, 0, 0, 500, 700, %SpotColor% ,l, Fast
	
	Loop, 20{ 
		Sendinput, {Left down}
		if(ox > 0){
			SendInput, {Left up}
			break
		}
	}
	
	if(ox >0){
		MouseMove, ox, oy, 0
		MouseClick, Left
	}
Sleep, 2000
}
2::ExitApp