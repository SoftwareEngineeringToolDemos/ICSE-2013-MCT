Set-ExecutionPolicy -executionpolicy unrestricted -force

$exp = 'notepad "C:\HelloWorld.txt"'
Invoke-Expression $exp
