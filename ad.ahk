var:=0
var1:=0
~+0::var+=1
~+4::var1+=1


starttime1 := A_TickCount
doubleclick1:=0

NumpadAdd::
elapsedtime1 := A_TickCount - starttime1
IF (elapsedtime1 < 250) and (doubleclick1=1)
    {
    var+=1
    doubleclick1:=0
    }
else
    {
    doubleclick1 := 1
    }
starttime1 := A_TickCount
return

starttime2 := A_TickCount
doubleclick2:=0

NumpadSub::
elapsedtime2 := A_TickCount - starttime2
IF (elapsedtime2 < 250) and (doubleclick2=1)
    {
    var-=1
    doubleclick2:=0
    }
else
    {
    doubleclick2 := 1
    }
starttime2 := A_TickCount
return

starttime3 := A_TickCount
doubleclick3:=0

NumpadEnter::
elapsedtime3 := A_TickCount - starttime3
IF (elapsedtime3 < 250) and (doubleclick3=1)
    {
    var1+=1
    doubleclick3:=0
    }
else
    {
    doubleclick3 := 1
    }
starttime3 := A_TickCount
return

starttime4 := A_TickCount
doubleclick4:=0




starttime4 := A_TickCount
doubleclick4:=0

NumpadIns::
elapsedtime4 := A_TickCount - starttime4
IF (elapsedtime4 < 250) and (doubleclick4=1)
    {
    var1-=1
    doubleclick4:=0
    }
else
    {
    doubleclick4 := 1
    }
starttime4 := A_TickCount
return

Numpad0::
elapsedtime4 := A_TickCount - starttime4
IF (elapsedtime4 < 250) and (doubleclick4=1)
    {
    var1-=1
    doubleclick4:=0
    }
else
    {
    doubleclick4 := 1
    }
starttime4 := A_TickCount
return

^!+/::Send {Enter}qween %var% hat %var1%


Numpad4 & Numpad5::
var:=0
var1:=0
Return

~^F5::
mni:=Min(var,var1)
loop, %mni%{
Send 0~x
Click, 640, 340
}
sub:=var1-var
loop, %sub%{
Send ~
}
Send {F5}1
Return

