1::

Sleep, 3000
Loop {
ifWinExist League of Legends (TM) Client
{
IfWinActive League of Legends (TM) Client
{
MouseClick, Right
Send, R
Sleep, 3000
Send, R
}
}
Sleep, 5000
}
return

3::ExitApp