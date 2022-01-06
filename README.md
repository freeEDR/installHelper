# Installation Helper
This tool to help users install FreeEDR host agents for Windows. 

It is UI "wrapper" to show EULA & a button that launches

`start-process -verb runas -Filepath powershell -ArgumentList "-ExecutionPolicy Bypass", '-Command "$standAlone=1; $site=''https://raw.githubusercontent.com/freeEDR/FreeEDR-agents/main/install.ps1'';[scriptblock]::Create((New-Object System.Net.WebClient).DownloadString($site)).Invoke();pause;"'` 

instead of having users to follow through the Powershell approach stated @ https://github.com/freeEDR/FreeEDR-agents/wiki#standalone-mode


