@powershell -Command "(New-Object Net.WebClient).DownloadFile('https://www.dropbox.com/s/bmxf8jq7gj4gber/eclipse.zip?dl=1', 'C:\Users\IEUser\Desktop\eclipse.zip')"

@powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=0B5-WRa86uKb_bXBCNFFWTDRHTHc', 'C:\Users\IEUser\Desktop\Readme.txt')"
@powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=0B5-WRa86uKb_Qm1oUElwWmNyTUE', 'C:\Users\IEUser\Desktop\License.txt')"
@powershell -Command "(New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=0B5-WRa86uKb_Qlc0Z3l1RHNUV28', 'C:\Users\IEUser\Desktop\Installation.txt')"


set PATH=%PATH%;C:\Program Files\7-Zip\

7z x C:\Users\IEUser\Desktop\eclipse.zip -oC:\Users\IEUser\Desktop\eclipse

@echo off

(echo [InternetShortcut]
echo URL=https://www.youtube.com/watch?v=RnW_6QKTBko
echo IconIndex=0) >"%userprofile%\desktop\MCT Demo Video.url"

mkdir c:\workspace
C:\Users\IEUser\Desktop\eclipse\eclipse\eclipse.exe -clean -data "c:\workspace"
