package main
import rl "vendor:raylib"

Game_Memory :: struct {
    player: Player
}
game_memory: Game_Memory

game_init :: proc() {
    player_init(&game_memory.player)
}

game_loop :: proc() {
    rl.InitWindow(1280, 720, "Fruit and Vegetable business")
    rl.SetTargetFPS(60)
    defer rl.CloseWindow()

    game_init()
    global_init()
    defer global_destroy()

    for !rl.WindowShouldClose() {
        game_update()
        rl.BeginDrawing()
            rl.ClearBackground(rl.GRAY)
            game_draw()
        rl.EndDrawing()
    }
}

game_draw :: proc() {
    player_draw(&game_memory.player)
}

game_update :: proc() {
    delta := rl.GetFrameTime()
    player_update(&game_memory.player, delta)
}
