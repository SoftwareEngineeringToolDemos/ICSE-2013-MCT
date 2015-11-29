Set-ExecutionPolicy -executionpolicy unrestricted -force

$exp = 'notepad "C:\HelloWorld.txt"'
invoke-item C:\Windows\System32\notepad.exe
