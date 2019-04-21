Loop {

	passwd = abcd
	
	ImageSearch, x1, y1, 0,0,764,501,%A_ScriptDir%\img\existinguser.png
	
	if(x1 > 0){
		MouseMove, x1, y1, 0
		MouseClick, Left
		
		
		Send, %passwd%
		
		ImageSearch,x2,y2,0,0,764,501,%A_ScriptDir%\img\login.png
		
		MouseMove,x2,y2,0
		MouseClick, Left
		
		Loop{
		Sleep, 1000
			
		ImageSearch,x3,y3,0,0,764,501,%A_ScriptDir%\img\clicktoplay.png
		ImageSearch,x4,y4,0,0,764,501,%A_ScriptDir%\img\clicktoplay2.png
		
		if(x3>0){
				MouseMove,x3,y3,0
				MouseClick, Left
				break
			
			}
		}
	}
}
