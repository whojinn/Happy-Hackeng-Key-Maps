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

; Altキー空打ちで変換・無変換キーを送出するホットキー。
; Author:     karakaram   http://www.karakaram.com/alt-ime-on-off

*~LAlt::Send {Blind}{vk07}
*~RAlt::Send {Blind}{vk07}

~LAlt Up::
if (A_PriorKey = "LAlt") {
    Send, {vkF3sc029}
}
Return

~RAlt Up::
if (A_PriorKey = "RAlt") {
    Send, {vkF2sc070}
}
Return

; 以下、コマンド入力。

#If (!WinActive("ahk_exe WindowsTerminal.exe","","設定") && !WinActive("ahk_exe Code.exe",""))
    ^h::Send, {BackSpace}
    ^d::Send, {Delete}
    ^p::Send, {Up}
    ^n::Send, {Down}
    ^f::Send, {Right}
    ^b::Send, {Left}
    ^a::Send, {Home}
    ^e::Send, {End}
    ^u::^z
    !h::Send, ^{BackSpace}
    !d::Send, ^{Delete}
    !p::Send, ^{Up}
    !n::Send, ^{Down}
    !f::Send, ^{Right}
    !b::Send, ^{Left}
    +^h::Send, ^h
    +^d::Send, ^d
    +^p::Send, ^p
    +^n::Send, ^n
    +^f::Send, ^f
    +^b::Send, ^b
    +^a::Send, ^a
    +^e::Send, ^e
    +^u::+^z
