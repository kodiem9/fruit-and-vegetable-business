package main
import rl "vendor:raylib"

game_init :: proc() {
    rl.InitWindow(1280, 720, "Fruit and Vegetable business")
    rl.SetTargetFPS(60)
    defer rl.CloseWindow()

    for !rl.WindowShouldClose() {
        game_update()
        rl.BeginDrawing()
            rl.ClearBackground(rl.GRAY)
            game_draw()
        rl.EndDrawing()
    }
}

game_draw :: proc() {
    rl.DrawRectangle(64, 64, 64, 64, rl.RED)
}

game_update :: proc() {
    
}
