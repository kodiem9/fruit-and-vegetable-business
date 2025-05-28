package main
import rl "vendor:raylib"

Transform_Component :: struct {
    size: rl.Vector2,
    position: rl.Vector2,
    color: rl.Color,
}

Texture_Component :: struct {
    texture: rl.Texture2D,
    source: rl.Rectangle,
    dest: rl.Rectangle,
    origin: rl.Vector2,
}

transform_draw :: proc(transform: Transform_Component) {
    rl.DrawRectangleV(transform.position, transform.size, transform.color)
}

texture_draw :: proc(
    transform: Transform_Component,
    texture_data: ^Texture_Component,
    texture: rl.Texture2D
) {
    texture_data.source = { 0, 0, transform.size.x, transform.size.y }
    texture_data.dest = {
        transform.position.x, transform.position.y,
        texture_data.source.width, texture_data.source.height
    }
    texture_data.origin = { 0, 0 }

    rl.DrawTexturePro(texture, texture_data.source, texture_data.dest, texture_data.origin, 0.0, transform.color)
}
