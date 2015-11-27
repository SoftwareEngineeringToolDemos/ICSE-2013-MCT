if not exist "C:\Tools" mkdir "C:\Tools"
echo "Downloading Eclipse"

@powershell -NoProfile -ExecutionPolicy unrestricted -Command "(New-Object Net.WebClient).DownloadFile('http://eclipse.mirror.rafal.ca/technology/epp/downloads/release/indigo/SR2/eclipse-modeling-indigo-SR2-win32.zip','C:\Tools\Eclipse.zip');"

echo "Starting to extract"
@powershell -NoProfile -ExecutionPolicy unrestricted -Command "(New-Object -com shell.application).namespace('C:\').CopyHere((new-object -com shell.application).namespace('C:\Tools\Eclipse.zip').Items(),16)"

echo "Copying jars to desktop"
@powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=0B5-WRa86uKb_bXBCNFFWTDRHTHc', '%USERPROFILE%\Desktop\Readme.txt')"
@powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=0B5-WRa86uKb_Qm1oUElwWmNyTUE', '%USERPROFILE%\Desktop\License.txt')"
@powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=0B5-WRa86uKb_Qlc0Z3l1RHNUV28', '%USERPROFILE%\Desktop\Installation.txt')"

echo "Downloading txt files to desktop"
if not exist "%USERPROFILE%\Desktop\Tools" mkdir "%USERPROFILE%\Desktop\Tools"
@powershell -NoProfile -ExecutionPolicy unrestricted -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/SoftwareEngineeringToolDemos/ICSE-2013-MCT/raw/master/binaries/TalkingCoding_1.0.0.201208300135.jar','%USERPROFILE%\Desktop\Tools\TalkingCoding_1.0.0.201208300135.jar');"

@powershell -NoProfile -ExecutionPolicy unrestricted -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/SoftwareEngineeringToolDemos/ICSE-2013-MCT/raw/master/binaries/cn.edu.pku.richComments_1.0.0.201208300135.jar','%USERPROFILE%\Desktop\Tools\cn.edu.pku.richComments_1.0.0.201208300135.jar');"

@powershell -NoProfile -ExecutionPolicy unrestricted -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/SoftwareEngineeringToolDemos/ICSE-2013-MCT/raw/master/binaries/cn.edu.pku.voiceCode_1.0.0.201208300135.jar','%USERPROFILE%\Desktop\Tools\cn.edu.pku.voiceCode_1.0.0.201208300135.jar');"

echo "Copying jars to eclipse"
xcopy %USERPROFILE%\Desktop\Tools\*.* C:\eclipse\plugins /d /s /k /c /f /e /q /h /y /v

echo "Creating shortcut"
@echo off

@echo off
echo Set oWS = WScript.CreateObject("WScript.Shell") > CreateShortcut.vbs
echo sLinkFile = "%USERPROFILE%\Desktop\eclipse.lnk" >> CreateShortcut.vbs
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> CreateShortcut.vbs
echo oLink.TargetPath = "C:\eclipse\eclipse.exe" >> CreateShortcut.vbs
echo oLink.Save >> CreateShortcut.vbs
cscript CreateShortcut.vbs
del CreateShortcut.vbs

echo "Adding eclipse to startup"
copy %USERPROFILE%\Desktop\eclipse.lnk %PROGRAMDATA%\Microsoft\Windows\"Start Menu"\Programs\Startup

(echo [InternetShortcut]
echo URL=https://www.youtube.com/watch?v=RnW_6QKTBko
echo IconIndex=0) >"%userprofile%\desktop\MCT Demo Video.url"
