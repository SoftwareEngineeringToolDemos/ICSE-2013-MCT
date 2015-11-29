Run("C:\Tools\Audio\6305_Vista_PG537\setup.exe")


#NoTrayIcon

#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_icon=OWS_validation.ico
#AutoIt3Wrapper_Compression=4
#AutoIt3Wrapper_Res_Description=valide automatiquement la fenetre Windows Security Alert
#AutoIt3Wrapper_Res_Fileversion=1
#AutoIt3Wrapper_Res_LegalCopyright=D.S.A A.K.A dasai
#AutoIt3Wrapper_Res_Language=1036
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****

Opt('MustDeclareVars', 1)
Opt("WinTitleMatchMode", 4)

Global $win_secu, $btn_run

$win_secu = "[TITLE:Open File - Security Warning;CLASS:#32770]"
$btn_run = "[CLASS:Button;INSTANCE:1]"

If WinWait($win_secu, "", 5) Then
    ControlClick($win_secu, "", $btn_run, "primary", 1)
    Sleep(500)
    ControlClick($win_secu, "", $btn_run, "primary", 1)
EndIf

Sleep(10000)
WinWaitActive("Realtek AC'97 Audio Setup (5.37) 6.0.1.6305","&Next")
Send("!n")

Sleep(5000)
WinWaitActive("Realtek AC'97 Audio Setup (5.37) 6.0.1.6305","InstallShield Wizard Complete")
Send("{ENTER}")


Sleep(5000)
WinWaitActive("Realtek AC'97 Audio Setup (5.37) 6.0.1.6305","InstallShield Wizard Complete")
Send("{ENTER}")


Sleep(5000)
WinWaitActive("Realtek AC'97 Audio Setup (5.37) 6.0.1.6305","InstallShield Wizard Complete")
Send("{ENTER}")


Sleep(5000)
WinWaitActive("Realtek AC'97 Audio Setup (5.37) 6.0.1.6305","Maintenance Complete")
Send("{ENTER}")


Sleep(5000)
WinWaitActive("Realtek AC'97 Audio Setup (5.37) 6.0.1.6305","Maintenance Complete")
Send("{ENTER}")


Sleep(5000)
WinWaitActive("Realtek AC'97 Audio Setup (5.37) 6.0.1.6305","Maintenance Complete")
Send("{ENTER}")
