@Echo OFF
Echo "Building solution/project file using batch file"
SET SolutionPath=%~dp0\rAthena.sln
Echo Start Time - %Time%
MSbuild.exe %SolutionPath% /p:PlatformToolset=v142 /m /t:Rebuild /p:Configuration=Release /p:Platform=x64
Echo End Time - %Time%
Set /p Wait=Build Process Completed...