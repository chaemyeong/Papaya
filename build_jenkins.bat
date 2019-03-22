@echo off

set DEVENV_PATH="C:\Program Files (x86)\Microsoft Visual Studio\2017\Professional\Common7\IDE\devenv.exe"
set SOLUTION_PATH="C:\Jenkins\workspace\Papaya\build\vs2015\Papaya.sln"

echo.
echo [ ===== BuildToolPath ===== ]
echo %DEVENV_PATH%
echo.
echo [ ===== SolutionPath ===== ]
echo %SOLUTION_PATH%

for %%a in (%SOLUTION_PATH%) do (
    echo.
    echo [ ===== BuildSolution ===== ]
    echo %%a
    echo.
    %DEVENV_PATH% %%a /Rebuild "Release|x64"
)
