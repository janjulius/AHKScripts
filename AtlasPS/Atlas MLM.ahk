#include util/JAHK.ahk

hopper = 0x5a7172
marker = 0xe928ff
3::ExitApp

1::
PixelSearch,cx,cy,0,0,518, 361,%hopper%, 3, Fast

if(cx>0){
    MouseMove, cx, cy,0
}

PixelSearch,mx,my,0,0,518,361,%marker%, 3, Fast
if(mx>0){
    MouseMove, mx,my,0
}
return