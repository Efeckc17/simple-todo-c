# Debugging Guide

## Building for Debug

1. Run `debug.bat` to create a debug build with symbols
2. This will create `bin/todo_debug.exe`

## Using Visual Studio

1. Open project:
   - Create new Empty C Project
   - Add existing .c and .h files from src folder
   - Add resource files (app.rc, todo.ico)

2. Configure project:
   - Add `comctl32.lib` and `uxtheme.lib` to linker
   - Set SubSystem to Windows
   - Add `src` and `src/utils` to include paths

3. Debug:
   - F9: Set/remove breakpoint
   - F5: Start debugging
   - F10: Step over
   - F11: Step into
   - Shift+F5: Stop debugging

## Using VS Code

1. Install:
   - VS Code
   - C/C++ extension
   - MSYS2 with GDB (`pacman -S mingw-w64-x86_64-gdb`)

2. Debug:
   - Press F5 and select "C/C++ (GDB/LLDB)"
   - Choose "gcc.exe build and debug active file"
   - Same shortcuts as Visual Studio

## Key Functions to Debug

- `WinMain` (main.c): Program entry
- `WindowProc` (gui.c): Window messages
- `AddTodoItem` (todo.c): Item management
- `SearchTodoItems` (search.c): Search function

## Common Issues

- Window creation: Check `hMainWindow` in WinMain
- UI updates: Check `WindowProc` messages
- Memory: Watch `malloc`/`free` for todo items
- ListView: Monitor item insertion/deletion

Need help? Open an issue on GitHub! 