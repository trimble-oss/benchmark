MSBuild Benchmark.sln /p:Configuration=Debug /p:Platform=x64
MSBuild Benchmark.sln /p:Configuration=Release /p:Platform=x64

@echo off
set /p Build=<ver.txt
set /a Build=%Build%+1
echo %Build%>ver.txt

c:\work\nuget.exe pack -Version 1.7.1.%Build% Benchmark-v142.nuspec