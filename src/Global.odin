package main
import rl "vendor:raylib"

@(private="file")
Textures :: struct {
    player: rl.Texture2D
}

Global :: struct {
    screen: rl.Vector2,
    textures: Textures
}
global: Global

global_init :: proc() {
    global.screen.x = (f32)(rl.GetScreenWidth())
    global.screen.y = (f32)(rl.GetScreenHeight())
    global.textures.player = rl.LoadTexture("../assets/player.png")
}

global_destroy :: proc() {
    rl.UnloadTexture(global.textures.player)
}
