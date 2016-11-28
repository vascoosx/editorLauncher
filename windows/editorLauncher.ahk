#IfWinActive, ahk_class Chrome_WidgetWin_1
^i::
send {LButton 2}
send ^a
send ^c
psScript := "launcher.ps1"
RunWait, powershell.exe "%A_ScriptDir%/%psScript%"
;send ^v
Return

