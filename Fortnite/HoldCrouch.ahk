SetWorkingDir %A_ScriptDir% 
#IfWinActive, Fortnite
{
	sp := 0
   $LCtrl::
        Send {LCtrl}
		sp = 0
        KeyWait, LCtrl
        Return
    $LCtrl Up::
		if(sp == 0)
			Send {LCtrl}
		else
			sp = 0
			
		
        Return
		
	$Space::
		GetKeyState, state, LCtrl
		if state = D
			Send {LCtrl Up}
			sp = 1
			
		Send {Space}
		return
			
	return
}