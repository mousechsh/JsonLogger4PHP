' !!!!!!!!MouseChshUAC.vbs
' ********************************************************************************************************************************MouseChshUAC.vbs
Set UAC = CreateObject( "Shell.Application" )
UAC.ShellExecute WScript.Arguments( 0 ), "", "", "runas", 1
' ********************************************************************************************************************************MouseChshUAC.vbs****
