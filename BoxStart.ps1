$git = "C:\Program Files\Git\cmd\git.exe"
$apm = join-path $env:localappdata "atom\bin\apm.cmd"

cinst -y git

cinst -y atom
& $git clone http://github.com/vorou/.atom C:\Users\vorou\.atom
& $apm install --packages-file C:\Users\vorou\code\init\packages.txt
