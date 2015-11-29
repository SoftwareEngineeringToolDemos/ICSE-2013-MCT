if not exist "C:\Tools\Audio" mkdir "C:\Tools\Audio"
@powershell -NoProfile -ExecutionPolicy unrestricted -Command "(New-Object Net.WebClient).DownloadFile('https://www.dropbox.com/s/0l2bwar2sspdg5r/autoit-v3.zip?dl=1','C:\Tools\autoit.zip');"


echo "Starting to extract auto it"
@powershell -NoProfile -ExecutionPolicy unrestricted -Command "(New-Object -com shell.application).namespace('C:\Tools\Audio').CopyHere((new-object -com shell.application).namespace('C:\Tools\autoit.zip').Items(),16)"


@powershell -NoProfile -ExecutionPolicy unrestricted -Command "(New-Object Net.WebClient).DownloadFile('https://www.dropbox.com/s/vf7lzzs09epb5yj/0001-6305_Vista_Win7_PG537.zip?dl=1','C:\Tools\driver.zip');"

@powershell -NoProfile -ExecutionPolicy unrestricted -Command "(New-Object -com shell.application).namespace('C:\Tools\Audio').CopyHere((new-object -com shell.application).namespace('C:\Tools\driver.zip').Items(),16)"


@powershell -NoProfile -ExecutionPolicy unrestricted -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/SoftwareEngineeringToolDemos/ICSE-2013-MCT/raw/master/build-vm/driverinstall.au3','C:\Tools\Audio\driverinstall.au3');"

echo "Eclipse added to start up"
copy %USERPROFILE%\Desktop\eclipse.lnk %PROGRAMDATA%\Microsoft\Windows\"Start Menu"\Programs\Startup

echo "Downlaoding driver"
@powershell -NoProfile -ExecutionPolicy unrestricted -Command "(New-Object Net.WebClient).DownloadFile('https://www.dropbox.com/s/8lxs4valsdxhqve/driverinstall.exe?dl=1','%USERPROFILE%\Desktop\installdriver.exe');"
