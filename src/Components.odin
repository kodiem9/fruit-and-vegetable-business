package main
import rl "vendor:raylib"

Transform_Component :: struct {
    size: rl.Vector2,
    position: rl.Vector2,
    color: rl.Color,
}

transform_draw :: proc(transform: Transform_Component) {
    rl.DrawRectangleV(transform.position, transform.size, transform.color)
}
