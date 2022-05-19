#include <WindowsConstants.au3>

Local $winClass = "[CLASS:" & $CmdLine[1] & "]"
Local $winPos = WinGetPos($winClass)
Local $margin = 50
Local $hGUI = GUICreate("Flash", $winPos[2] + $margin, $winPos[3] + $margin, $winPos[0] - $margin/2, $winPos[1] - $margin/2, $WS_POPUP, $WS_EX_TOPMOST)
GUISetState(@SW_SHOW, $hGUI)
WinActivate($winClass)

For $i = 1 To 5
	WinSetTrans($hGUI, "", $i * 50)
	Sleep(100)
Next

Sleep(2000)

For $i = 1 To 25
	WinSetTrans($hGUI, "", 255 - $i * 10)
	Sleep(100)
Next
