package main

import "core:fmt"
import rl "vendor:raylib"

main :: proc() {

	rl.InitWindow(1000, 800, "Test")
	defer rl.CloseWindow()

	main_loop: for {
		if (rl.WindowShouldClose() == true) {
			break main_loop
		}

		rl.BeginDrawing()
		defer rl.EndDrawing()

		rl.ClearBackground(rl.BLACK)
		rl.DrawText("LETS GOOO ODING LANG", 190, 200, 20, rl.WHITE)
	}
}
