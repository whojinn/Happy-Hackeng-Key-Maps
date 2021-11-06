
; ^	Ctrlキー
; !	Altキー
; +	Shiftキー
; #	Winキー

alt_left(){
    Send, !{Left}
    Return
}

alt_right(){
    Send, !{Right}
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
!b::Send, ^{Left}
!f::send, ^{Right}

+^h::ctrl_h()
+^d::ctrl_d()
+^f::ctrl_f()
+^b::ctrl_b()
