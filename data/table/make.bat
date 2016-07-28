@echo off
pushd %~dp0

call TableBuild .

if not exist client mkdir client
if not exist server mkdir server

move *.json client
move *.pbt client
move *.proto client
move *.cs client
move *.tbl server
move *.tbl.h server
rem ..\Tool\PackTool\TableBuild.exe %*

popd
if "%1"=="" pause
