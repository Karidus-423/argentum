package main

import "core:fmt"
import rl "vendor:raylib"

BEEPER_COLOR :: rl.Color{151,152,145,255}

WIDTH :: 1200
HEIGHT :: 1000
WINDOW_TITLE :: "Argentum"

DebugInfo :: struct{
	pid: i32,
}

InitDebugger :: proc() -> DebugInfo{
}

main :: proc() {
	rl.InitWindow(WIDTH, HEIGHT, WINDOW_TITLE)
	defer rl.CloseWindow()

	db_info: DebugInfo = InitDebugger();

	main_loop: for {
		if (rl.WindowShouldClose() == true) {
			break main_loop
		}
		rl.BeginDrawing()

		RunDebugger(db_info);

		defer rl.EndDrawing()
		rl.ClearBackground(BEEPER_COLOR)
	}
}
