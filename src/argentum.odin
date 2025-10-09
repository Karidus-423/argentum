package main

import "core:fmt"
import rl "vendor:raylib"

WIDTH :: 1200
HEIGHT :: 1000
WINDOW_TITLE :: "Argentum"

DebugerInfo :: struct {
	exe_name: string,
	pid:      u32,
}

InitDebugger :: proc() -> DebugerInfo {
	info: DebugerInfo
	return info
}

RunDebugger :: proc(info : DebugerInfo) {
}

main :: proc() {

	init_info: DebugerInfo = InitDebugger()

	RunDebugger(init_info);

	rl.InitWindow(WIDTH, HEIGHT, WINDOW_TITLE)
	defer rl.CloseWindow()

	main_loop: for {
		if (rl.WindowShouldClose() == true) {
			break main_loop
		}
		rl.BeginDrawing()

		defer rl.EndDrawing()
		rl.ClearBackground(rl.BLACK)
	}
}
