# Docker-PerformanceCounter
Show slow performance when using .NET PerformanceCounter in Windows Docker image

Run 

`> build.cmd`

to create Windows and ServerCore images with powershell scripts. Select either local version or AKS version. Modify environment variables in `build.cmd` if another version is needed.

Run 

`> run.cmd`

The following combinations will be run:

* Docker image: Windows, ServerCore
* Process isolation: hyperv, process
* PerformanceCounter code: PowerShell, .NET

Log file for each combination will be created. Look for "Create took ..." to see the time taken to create the PerformanceCounter object (in ms).

Data from one of our runs:
* core_NET_hyperv: 1220
* core_NET_process: **120612**
* core_PowerShell_hyperv: 2184
* core_PowerShell_process: 2089
* win_NET_hyperv: **120808**
* win_NET_process: ***266250***
* win_PowerShell_hyperv: 2042
* win_PowerShell_process: 1868
