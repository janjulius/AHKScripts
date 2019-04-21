
0::ExitApp

2::
BlockInput,On
amountOfSwitches=4
loopA := Ceil(amountOfSwitches /= 2)
loopB := Floor(amountOfSwitches /= 2)

MouseGetPos, xpos, ypos

MouseMove, 586, 260, 0
Send, {F1}
loop, %loopA% {
	Click, Left
	loop, %loopB% {
            MouseMove, 42, 0, 0, R
			Click, Left
	}
	MouseMove, -42, 36, 0, R
}

MouseMove, xpos, ypos, 0
Click, Left
BlockInput,Off
return
1::
BlockInput,On
amountOfSwitches=4
loopA := Ceil(amountOfSwitches /= 2)
loopB := Floor(amountOfSwitches /= 2)

MouseGetPos, xpos, ypos

MouseMove, 586, 260, 0
Send, {F1}
loop, %loopA% {
	Click, Left
	loop, %loopB% {
            MouseMove, 42, 0, 0, R
			Click, Left
	}
	MouseMove, -42, 36, 0, R
}

Send, {F4}
Sleep, 20
MouseMove, 580, 423, 0
Click, Left
Sleep, 20
MouseMove, xpos, ypos, 0
Sleep, 20
Click, Left

BlockInput,Off
return

3::
MouseGetPos, xpos, ypos
Send, {F4}
Sleep, 20
MouseMove, 580, 423, 0
Click, Left
Sleep, 20
MouseMove, xpos, ypos, 0
Sleep, 20
Click, Left
return


