package main
import rl "vendor:raylib"

SIZE :: 64
SPEED :: 400

Player :: struct {
    transform: Transform_Component
}

player_init :: proc(player: ^Player) {
    player.transform.size = { SIZE, SIZE }
    player.transform.position = { 0, 0 }
    player.transform.color = rl.RED
}

player_draw :: proc(player: Player) {
    transform_draw(player.transform)
}

player_update :: proc(player: ^Player, delta: f32) {
    if rl.IsKeyDown(.A) do player.transform.position.x -= SPEED * delta
    if rl.IsKeyDown(.D) do player.transform.position.x += SPEED * delta
    if rl.IsKeyDown(.W) do player.transform.position.y -= SPEED * delta
    if rl.IsKeyDown(.S) do player.transform.position.y += SPEED * delta
}
