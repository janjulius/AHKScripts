1::

loop{
ImageSearch, x, y, 0,0,521,365,%A_ScriptDir%\img\sturgeon.png ;trade her

if(x>0){
    MouseMove, x, y
    MouseClick, Left
}

Sleep, 30000

Loop, 1000{
ImageSearch, x, y, 560,236,764,501,%A_ScriptDir%\img\sturgeon.png 
if(x>0){
				MouseMove, x, y, 0
				Sendinput, {Shift down}
				MouseClick, Left
				SendInput, {Shift up}
			} else {
			break
            }
}
Loop, 1000{
ImageSearch, x, y, 560,236,764,501,%A_ScriptDir%\img\lsalmon.png 
if(x>0){
				MouseMove, x, y, 0
				Sendinput, {Shift down}
				MouseClick, Left
				SendInput, {Shift up}
			} else {
			break
            }
}
Loop, 1000{
ImageSearch, x, y, 560,236,764,501,%A_ScriptDir%\img\ltrout.png 
if(x>0){
				MouseMove, x, y, 0
				Sendinput, {Shift down}
				MouseClick, Left
				SendInput, {Shift up}
			} else {
			break
            }
}
}

2::ExitApp