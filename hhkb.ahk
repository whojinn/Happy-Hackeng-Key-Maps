; MIT License
;
; Copyright (c) 2021 whojinn
;
; Permission is hereby granted, free of charge, to any person obtaining a copy
; of this software and associated documentation files (the "Software"), to deal
; in the Software without restriction, including without limitation the rights
; to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
; copies of the Software, and to permit persons to whom the Software is
; furnished to do so, subject to the following conditions:
;
; The above copyright notice and this permission notice shall be included in all
; copies or substantial portions of the Software.
;
; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
; IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
; FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
; AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
; LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
; OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
; SOFTWARE.


; ^	Ctrlキー
; !	Altキー
; +	Shiftキー
; #	Winキー

ctrl_p()
{
    Hotkey, ^p,Off
    Send, ^p
    Hotkey, ^p,On
    Return
}

ctrl_n()
{
    Hotkey, ^n,Off
    Send, ^n
    Hotkey, ^n,On
    Return
}

ctrl_f(){
    Hotkey, ^f,Off
    Send, ^f
    Hotkey, ^f,On
    Return
}

ctrl_b(){
    Hotkey, ^b,Off
    Send, ^b
    Hotkey, ^b,on
    Return
}

ctrl_h(){
    Hotkey, ^h,Off
    Send, ^h
    Hotkey, ^h,on
    Return
}

ctrl_d(){
    Hotkey, ^d,Off
    Send, ^d
    Hotkey, ^d,on
    Return
}

; 以下、コマンド入力。

#IfWinNotActive ahk_exe WindowsTerminal.exe
^h::Send, {Backspace}
^d::Send, {Delete}
^p::Send, {Up}
^n::Send, {Down}
^f::send, {Right}
^b::Send, {Left}

!h::Send, ^{BackSpace}
!d::Send, ^{Delete}
!p::Send, ^{Up}
!n::Send, ^{Down}
!f::send, ^{Right}
!b::Send, ^{Left}

+^h::ctrl_h()
+^d::ctrl_d()
+^p::ctrl_p()
+^n::ctrl_n()
+^f::ctrl_f()
+^b::ctrl_b()
