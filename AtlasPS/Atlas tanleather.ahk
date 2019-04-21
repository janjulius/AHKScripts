#include util/JAHK.ahk
#include util/Methods.ahk

1::
Loop{
    ClickLeft(91, 125, 0)
    ClickLeft(489, 53, 0)
    Send,{F4}
    Sleep, 30
    ClickLeft(660,339,0)
    Sleep, 10000
    ClickRight(227, 144, 0)
    Sleep, 200
    ImageSearch, ax, ay, 0,0,764,501,%A_ScriptDir%\img\bankbankbooth.png 
    if(ax>0){
        ClickLeft(ax,ay,0)
    }
    Sleep, 1000
    CLickLeft(628,253,0)
    Sleep, 700
}

return

2::ExitApp
