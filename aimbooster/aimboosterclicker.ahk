2::ExitApp



1::

ImageSearch, OX, OY, 0, 0, 1923, 968, %A_ScriptDir%\img\xd.png

Random, r1, 1, 3
Random, r2, 1, 3

Random ra1, 1, 10
Random ra2, 1, 10

nPosX = %OX% 
nPosY = %OY% - 2

MouseMove, nPosX, nPosY, 0
MouseGetPos, mXpos, mYpos
PixelGetColor, MousePosColor, %mXpos%, %mYpos%
if(OX > 0){
MouseClick, Left
}