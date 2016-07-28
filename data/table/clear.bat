@echo off
pushd "%~dp0"

if exist client del /Q client\*
if exist server del /Q server\*

del /Q *.cs;*.json;*.tbl;*.tbl.h;*.pbt;*.proto;*.meta;*.lua

popd
if "%1"=="" pause
