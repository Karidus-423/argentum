package main

import "core:fmt"
import rl "vendor:raylib"
import ui "ui"


WIDTH :: 1200
HEIGHT :: 1000
WINDOW_TITLE :: "Argentum"

DebugInfo :: struct{
	pid: i32,
}

// InitDebugger :: proc() -> DebugInfo{
// }

main :: proc() {
	rl.InitWindow(WIDTH, HEIGHT, WINDOW_TITLE)
	defer rl.CloseWindow()

	// db_info: DebugInfo = InitDebugger();

	main_loop: for {
		if (rl.WindowShouldClose() == true) {
			break main_loop
		}
		rl.BeginDrawing()

		ui.DrawPane();
		// RunDebugger(db_info);

		defer rl.EndDrawing()
		rl.ClearBackground(ui.BEEPER_COLOR)
	}
}
