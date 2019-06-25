Set-TaskbarOptions -AlwaysShowIconsOn
Set-WindowsExplorerOptions -EnableShowFileExtensions -EnableShowFullPathInTitleBar

choco feature enable -n=useRememberedArgumentsForUpgrades

# browser and the others
cinst dropbox
cinst googlechrome
cinst keepass
cinst synctrayzor
choco pin add -n=dropbox
choco pin add -n=googlechrome

# benchmark
cinst cinebench
cinst crystaldiskmark

# Version control system and editor
cinst git --params "/GitAndUnixToolsOnPath /NoGitLfs /NoAutoCrlf"
cinst git-lfs
cinst vscode
choco pin add -n=vscode

# Search, archive, delete and copy
cinst 7zip
cinst everything --params "/client-service /run-on-system-startup"

# Install sdk and runtimes
cinst adobeair
cinst directx
cinst javaruntime
choco pin add -n=adobeair
choco pin add -n=directx
choco pin add -n=javaruntime

# Tools and utilities
cinst discord
cinst obs-studio
cinst paint.net
cinst steam
cinst vlc
choco pin add -n=discord
choco pin add -n=steam
