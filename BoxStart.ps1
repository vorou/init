$git = "C:\Program Files\Git\cmd\git.exe"
$apm = join-path $env:localappdata "atom\bin\apm.cmd"

cinst -y git

cinst -y atom
$atomConfig = join-path $env:userprofile ".atom"
& $git clone http://github.com/vorou/.atom $atomConfig
& $apm install --packages-file (join-path $atomConfig packages.txt)
