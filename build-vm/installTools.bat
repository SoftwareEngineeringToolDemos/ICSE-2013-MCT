powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/SoftwareEngineeringToolDemos/ICSE-2013-MCT/raw/master/test/eclipse.zip', 'C:\Users\IEUser\Desktop\eclipsegitty.zip')"

powershell -nologo -noprofile -command "& { Add-Type -A 'System.IO.Compression.FileSystem'; [IO.Compression.ZipFile]::ExtractToDirectory('C:\Users\IEUser\Desktop\eclipsegitty.zip', 'C:\Users\IEUser\Desktop\eclipse'); }"
