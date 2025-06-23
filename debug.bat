@echo off
chcp 65001 >nul
title Build (Debug): Todo App
echo --------------------------------------
echo Building Todo Application (Debug)...
echo --------------------------------------

where gcc >nul 2>nul
if %errorlevel% neq 0 (
    echo Error: GCC not found!
    echo Please install MinGW and add it to your PATH
    pause
    exit /b 1
)

if not exist bin mkdir bin

echo Creating resource file...
(
echo 1 24 "src/app.manifest"
echo 400 ICON "img/todo.ico"
) > src/app.rc

windres -i src/app.rc -O coff -o src/app.res

echo Compiling sources with debug symbols...
gcc src/main.c src/todo.c src/gui.c src/utils/search.c src/app.res -o bin/todo_debug.exe ^
    -mwindows ^
    -lcomctl32 ^
    -luxtheme ^
    -g

if %errorlevel% neq 0 (
    echo Compilation failed!
    pause
    exit /b 1
)

echo Debug build successful!
echo Executable created at bin\todo_debug.exe 