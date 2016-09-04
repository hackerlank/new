@echo off
pushd "%~dp0"
rem -------------------------------------------------
rem copy到Unity客户端
rem -------------------------------------------------
set dest1=..\..\BwtResources\android\common
set dest2=..\..\bwtsrc\DataCenter
set dest3=..\..\BwtResources\ios\common
if exist "%dest1%" (
	del /Q "%dest1%\tab\*.bytes"
	del /Q "%dest3%\tab\*.bytes"
	copy /Y client\*.pbt "%dest1%\tab"
	copy /Y client\*.pbt "%dest3%\tab"
	rename "%dest1%\tab\*.pbt"  *.bytes
	rename "%dest3%\tab\*.pbt"  *.bytes
	rem call:clearMeta "%dest%\Resources\Table"

	:: copy json文本
	del /Q "%dest1%\tab\*.json"
	copy /Y client\*.json "%dest1%\tab"

	del /Q "%dest2%\Table\*.cs"
	copy /Y client\*.cs "%dest2%\Table"
	rem call:clearMeta "%dest2%\Scripts\Table"
)

rem -------------------------------------------------
rem copy到C++服务器
rem -------------------------------------------------
set dest=..\..\..\BWTServer
del /Q ..\map\tbl\*.tbl
copy /Y server\*.tbl ..\map\tbl
del /Q ..\script\table\*.lua
copy /Y *.lua ..\script\table\
del /Q *.lua
set cfg_dest =..\..\..\common
copy /Y global_const\*.proto "%cfg_dest%\user"

if exist "%dest%\table" (
	del /Q "%dest%\table\*.h"
	copy /Y server\*.h "%dest%\table"
)

popd
if "%1"=="" pause
GOTO:EOF

rem ===================================================================
rem 递归删除给定目录中所有孤立的*.meta文件
rem 参数: 路径
:clearMeta
echo clear meta: %~1
for /f "tokens=* delims=" %%i in ('dir /b /s "%~1\*.meta"') do (
	if not exist "%%~dpni" (
		echo %%i
		del /Q "%%i"
	)
)
GOTO:EOF
