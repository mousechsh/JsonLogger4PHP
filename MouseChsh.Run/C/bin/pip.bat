@REM !!!!!!!!pip.bat
@REM ********************************************************************************************************************************pip.bat
@ECHO OFF
:: 重建pip.exe
:: python -m pip install --upgrade --force-reinstall pip -i https://mirrors.aliyun.com/pypi/simple/
SETLOCAL
REM ================================================================================================================================pip.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------pip.bat
@REM SET PYTHON_HOME=%MouseChshZRL_PYTHON_HOME%
@REM SET PYTHONHOME=%PYTHONHOME%
@REM SET CL=/FI"C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.30.30705\include\stdint.h"
@REM :: Copy the SET key=value from x86/x64 Native Tools Command Prompt for VS 20XX
@REM SET configsetroot=C:\WINDOWS\ConfigSetRoot
@REM SET DevEnvDir=C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE\
@REM SET DriverData=C:\Windows\System32\Drivers\DriverData
@REM SET ExtensionSdkDir=C:\Program Files (x86)\Microsoft SDKs\Windows Kits\10\ExtensionSDKs
@REM SET FPS_BROWSER_APP_PROFILE_STRING=Internet Explorer
@REM SET FPS_BROWSER_USER_PROFILE_STRING=Default
@REM SET Framework40Version=v4.0
@REM SET FrameworkDir=C:\Windows\Microsoft.NET\Framework64\
@REM SET FrameworkDir64=C:\Windows\Microsoft.NET\Framework64\
@REM SET FrameworkVersion=v4.0.30319
@REM SET FrameworkVersion64=v4.0.30319
@REM SET FSHARPINSTALLDIR=C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE\CommonExtensions\Microsoft\FSharp\Tools
@REM SET INCLUDE=C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.30.30705\ATLMFC\include;C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.30.30705\include;C:\Program Files (x86)\Windows Kits\NETFXSDK\4.8\include\um;C:\Program Files (x86)\Windows Kits\10\include\10.0.19041.0\ucrt;C:\Program Files (x86)\Windows Kits\10\\include\10.0.19041.0\\shared;C:\Program Files (x86)\Windows Kits\10\\include\10.0.19041.0\\um;C:\Program Files (x86)\Windows Kits\10\\include\10.0.19041.0\\winrt;C:\Program Files (x86)\Windows Kits\10\\include\10.0.19041.0\\cppwinrt
@REM SET LIB=C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.30.30705\ATLMFC\lib\x64;C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.30.30705\lib\x64;C:\Program Files (x86)\Windows Kits\NETFXSDK\4.8\lib\um\x64;C:\Program Files (x86)\Windows Kits\10\lib\10.0.19041.0\ucrt\x64;C:\Program Files (x86)\Windows Kits\10\\lib\10.0.19041.0\\um\x64
@REM SET LIBPATH=C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.30.30705\ATLMFC\lib\x64;C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.30.30705\lib\x64;C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.30.30705\lib\x86\store\references;C:\Program Files (x86)\Windows Kits\10\UnionMetadata\10.0.19041.0;C:\Program Files (x86)\Windows Kits\10\References\10.0.19041.0;C:\Windows\Microsoft.NET\Framework64\v4.0.30319
@REM SET NETFXSDKDir=C:\Program Files (x86)\Windows Kits\NETFXSDK\4.8\
@REM SET NUMBER_OF_PROCESSORS=4
@REM SET Path=C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE\\Extensions\Microsoft\IntelliCode\CLI;C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.30.30705\bin\HostX64\x64;C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE\VC\VCPackages;C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE\CommonExtensions\Microsoft\TestWindow;C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE\CommonExtensions\Microsoft\TeamFoundation\Team Explorer;C:\Program Files\Microsoft Visual Studio\2022\Community\MSBuild\Current\bin\Roslyn;C:\Program Files\Microsoft Visual Studio\2022\Community\Team Tools\Performance Tools\x64;C:\Program Files\Microsoft Visual Studio\2022\Community\Team Tools\Performance Tools;C:\Program Files (x86)\Microsoft SDKs\Windows\v10.0A\bin\NETFX 4.8 Tools\x64\;C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE\CommonExtensions\Microsoft\FSharp\Tools;C:\Program Files (x86)\Windows Kits\10\bin\10.0.19041.0\\x64;C:\Program Files (x86)\Windows Kits\10\bin\\x64;C:\Program Files\Microsoft Visual Studio\2022\Community\\MSBuild\Current\Bin\amd64;C:\Windows\Microsoft.NET\Framework64\v4.0.30319;C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE\;C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\Tools\;%PATH%;C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE\CommonExtensions\Microsoft\CMake\CMake\bin;C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE\CommonExtensions\Microsoft\CMake\Ninja;C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE\VC\Linux\bin\ConnectionManagerExe
@REM SET PATHEXT=.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC
@REM SET Platform=x64
@REM SET PSModulePath=C:\Program Files\WindowsPowerShell\Modules;C:\WINDOWS\system32\WindowsPowerShell\v1.0\Modules;C:\Program Files (x86)\Microsoft SQL Server\110\Tools\PowerShell\Modules\
@REM SET UCRTVersion=10.0.19041.0
@REM SET UniversalCRTSdkDir=C:\Program Files (x86)\Windows Kits\10\
@REM SET VCIDEInstallDir=C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE\VC\
@REM SET VCINSTALLDIR=C:\Program Files\Microsoft Visual Studio\2022\Community\VC\
@REM SET VCToolsInstallDir=C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.30.30705\
@REM SET VCToolsRedistDir=C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Redist\MSVC\14.30.30704\
@REM SET VCToolsVersion=14.30.30705
@REM SET VisualStudioVersion=17.0
@REM SET VS170COMNTOOLS=C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\Tools\
@REM SET VSCMD_ARG_app_plat=Desktop
@REM SET VSCMD_ARG_HOST_ARCH=x64
@REM SET VSCMD_ARG_TGT_ARCH=x64
@REM SET VSCMD_VER=17.0.4
@REM SET VSINSTALLDIR=C:\Program Files\Microsoft Visual Studio\2022\Community\
@REM SET WindowsLibPath=C:\Program Files (x86)\Windows Kits\10\UnionMetadata\10.0.19041.0;C:\Program Files (x86)\Windows Kits\10\References\10.0.19041.0
@REM SET WindowsSdkBinPath=C:\Program Files (x86)\Windows Kits\10\bin\
@REM SET WindowsSdkDir=C:\Program Files (x86)\Windows Kits\10\
@REM SET WindowsSDKLibVersion=10.0.19041.0\
@REM SET WindowsSdkVerBinPath=C:\Program Files (x86)\Windows Kits\10\bin\10.0.19041.0\
@REM SET WindowsSDKVersion=10.0.19041.0\
@REM SET WindowsSDK_ExecutablePath_x64=C:\Program Files (x86)\Microsoft SDKs\Windows\v10.0A\bin\NETFX 4.8 Tools\x64\
@REM SET WindowsSDK_ExecutablePath_x86=C:\Program Files (x86)\Microsoft SDKs\Windows\v10.0A\bin\NETFX 4.8 Tools\
@REM SET WXDRIVE_START_ARGS=--wxdrive-setting=0 --disable-gpu --disable-software-rasterizer --enable-features=NetworkServiceInProcess
@REM SET ZES_ENABLE_SYSMAN=1
REM --------------------------------------------------------------------------------------------------------------------------------pip.bat
IF NOT EXIST "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build" GOTO EndVisualStudio
SET MouseChshZRL_Temp_Drive=%CD:~0,2%
SET MouseChshZRL_Temp_Path=%CD%
PATH=%MouseChshZRL_OS_Path%
SET PATHEXT=%MouseChshZRL_OS_PathExt%
C:
CD C:\Program Files\Microsoft Visual Studio\2022\Community\
IF "%MouseChshZRL_ProcBitMode%"=="64" (
	CALL "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvars64.bat"
) ELSE (
	CALL "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvars32.bat"
)
%MouseChshZRL_Temp_Drive%
CD %MouseChshZRL_Temp_Path%
SET
:EndVisualStudio
REM --------------------------------------------------------------------------------------------------------------------------------pip.bat
IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\python.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\python.bat" -m pip %*
REM ================================================================================================================================pip.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************pip.bat****
