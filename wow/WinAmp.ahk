;; IT REALLY WHIPS THE LLAMAS ASS ;;

; CONTRoL SHIFT AND W to start this
; CONTROL SHIFT E TO CLOSE. 
; Will need to launch again 


Random, n, 1000, 10000

if (n >= 1100)

    n := n + 100


^+w::  ; CTRL SHIFT W to  start the script

#IfWinActive, World of Warcraft
	WinActivate World of Warcraft

Loop, 10000000000 ; Loops functionally forever
{
    Send, {Enter} 
	sleep, n
	Send, /dance	
	sleep, n
	Send, {Enter}
	sleep, n 
	Send, {Left down} 
    sleep, n
	Send, {Space}
	Send, {Left up} 
	sleep, n
	Send, x
	sleep, n
	Send, {Space}
	sleep, n
	Send, {Enter} 
	sleep, n
	Send, /dance 
	sleep, n
	Send, {Enter}
	sleep, n
	Send, {Right down}
    sleep, n
	Send, {Space}
	Send, {Right up} 
	sleep, n
	Send, z
	sleep, n
	Send, {Space}
}

^+e::   ; CTRL SHIFT E to kill the program
#IfWinActive, World of Warcraft
	WinActivate World of Warcraft

ExitApp

