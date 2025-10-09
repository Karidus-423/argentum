//Stores all of the drawing of the panes
package frontend

import rl "vendor:raylib"

DebugPane :: struct{
	position : rl.Vector2,
	name: string,
}

DrawSourcePane :: proc(file_code: string) -> DebugPane {
}
