Const $cUpload="upload"
Local $vOperation, $vFileName
$vOperation=$CmdLine[1]
$vFileName=$CmdLine[2]

If StringLower(StringReplace($vOperation, " ", ""))==$cUpload Then
	WinWaitActive("Open")
	ControlFocus("Open", "", "Edit1")
	ControlSetText("Open", "", "Edit1",  $vFileName)
	ControlClick("Open", "", "Button1")
Else
	MsgBox(16, "Error", StringUpper($vOperation) & " Is Invalid Option")
EndIf
