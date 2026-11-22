## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----eval=FALSE---------------------------------------------------------------
# library(shiny)
# library(shinyphaser)
# shiny::addResourcePath("hedgehog-assets",
#   system.file("examples", "hedgehog", "www", package = "shinyphaser"))
# 
# game <- PhaserGame$new(width = 1500, height = 800)
# 
# ui <- tagList(
#   game$use_phaser()
# )
# 
# server <- function(input, output, session) {
#   game$set_shiny_session()
# }
# 
# shinyApp(ui, server)

## ----eval=FALSE---------------------------------------------------------------
# floor <- game$add_image(
#   name = "floor",
#   url = "hedgehog-assets/terrain/grass.png",
#   x = 800,
#   y = 300
# )

## ----eval=FALSE---------------------------------------------------------------
# library(shiny)
# library(shinyphaser)
# shiny::addResourcePath("hedgehog-assets",
#   system.file("examples", "hedgehog", "www", package = "shinyphaser"))
# 
# game <- PhaserGame$new(width = 1500, height = 800)
# 
# ui <- tagList(
#   game$use_phaser()
# )
# 
# server <- function(input, output, session) {
#   game$set_shiny_session()
# 
#   floor <- game$add_image(
#     name = "floor",
#     url = "hedgehog-assets/terrain/grass.png",
#     x = 800,
#     y = 300
#   )
# }
# 
# shinyApp(ui, server)
# 

## ----echo=FALSE---------------------------------------------------------------
knitr::include_graphics("assets/first_game_2_add_background.png")

## ----eval=FALSE---------------------------------------------------------------
# hedgehog <- game$add_sprite(
#   name = "hedgehog",
#   url = "hedgehog-assets/sprites/hedgehog_32.png",
#   x = 140,
#   y = 260,
#   frame_width = 32,
#   frame_height = 32,
#   frame_count = 5,
#   frame_rate = 6
# )

## ----echo=FALSE---------------------------------------------------------------
knitr::include_graphics("assets/hedgehog_32.png")

## ----eval=FALSE---------------------------------------------------------------
# library(shiny)
# library(shinyphaser)
# shiny::addResourcePath("hedgehog-assets",
#   system.file("examples", "hedgehog", "www", package = "shinyphaser"))
# 
# game <- PhaserGame$new(width = 1500, height = 800)
# 
# ui <- tagList(
#   game$use_phaser()
# )
# 
# server <- function(input, output, session) {
#   game$set_shiny_session()
# 
#   floor <- game$add_image(
#     name = "floor",
#     url = "hedgehog-assets/terrain/grass.png",
#     x = 800,
#     y = 300
#   )
# 
#   hedgehog <- game$add_sprite(
#     name = "hedgehog",
#     url = "hedgehog-assets/sprites/hedgehog_32.png",
#     x = 140,
#     y = 260,
#     frame_width = 32,
#     frame_height = 32,
#     frame_count = 5,
#     frame_rate = 6
#   )
# }
# 
# shinyApp(ui, server)

## ----echo=FALSE---------------------------------------------------------------
knitr::include_graphics("assets/first_game_3_add_sprite.gif")

## ----eval=FALSE---------------------------------------------------------------
# hedgehog$add_player_controls(
#   directions = c("left", "right", "up", "down"),
#   speed = 220
# )

## ----eval=FALSE---------------------------------------------------------------
# library(shiny)
# library(shinyphaser)
# shiny::addResourcePath("hedgehog-assets",
#   system.file("examples", "hedgehog", "www", package = "shinyphaser"))
# 
# game <- PhaserGame$new(width = 1500, height = 800)
# 
# ui <- tagList(
#   game$use_phaser()
# )
# 
# server <- function(input, output, session) {
#   game$set_shiny_session()
# 
#   floor <- game$add_image(
#     name = "floor",
#     url = "hedgehog-assets/terrain/grass.png",
#     x = 800,
#     y = 300
#   )
# 
#   hedgehog <- game$add_sprite(
#     name = "hedgehog",
#     url = "hedgehog-assets/sprites/hedgehog_32.png",
#     x = 140,
#     y = 260,
#     frame_width = 32,
#     frame_height = 32,
#     frame_count = 5,
#     frame_rate = 6
#   )
# 
#   hedgehog$add_player_controls(
#     directions = c("left", "right", "up", "down"),
#     speed = 220
#   )
# }
# 
# shinyApp(ui, server)

## ----echo=FALSE---------------------------------------------------------------
knitr::include_graphics("assets/first_game_4_player_controls.gif")

## ----echo=FALSE---------------------------------------------------------------
knitr::include_graphics("assets/hedgehog_move_right_32.png")
knitr::include_graphics("assets/hedgehog_move_left_32.png")

## ----eval=FALSE---------------------------------------------------------------
# moves <- c("move_left", "move_right", "move_up", "move_down")
# 
# for (move in moves) {
#   hedgehog$add_animation(
#     suffix = move,
#     url = paste0("hedgehog-assets/sprites/hedgehog_", move, "_32.png"),
#     frame_width = 32,
#     frame_height = 32,
#     frame_rate = 5
#   )
# }

## ----eval=FALSE---------------------------------------------------------------
# library(shiny)
# library(shinyphaser)
# shiny::addResourcePath("hedgehog-assets",
#   system.file("examples", "hedgehog", "www", package = "shinyphaser"))
# 
# game <- PhaserGame$new(width = 1500, height = 800)
# 
# ui <- tagList(
#   game$use_phaser()
# )
# 
# server <- function(input, output, session) {
#   game$set_shiny_session()
# 
#   floor <- game$add_image(
#     name = "floor",
#     url = "hedgehog-assets/terrain/grass.png",
#     x = 800,
#     y = 300
#   )
# 
#   hedgehog <- game$add_sprite(
#     name = "hedgehog",
#     url = "hedgehog-assets/sprites/hedgehog_32.png",
#     x = 140,
#     y = 260,
#     frame_width = 32,
#     frame_height = 32,
#     frame_count = 5,
#     frame_rate = 6
#   )
# 
#   hedgehog$add_player_controls(
#     directions = c("left", "right", "up", "down"),
#     speed = 220
#   )
# 
#   moves <- c("move_left", "move_right", "move_up", "move_down")
# 
#   for (move in moves) {
#     hedgehog$add_animation(
#       suffix = move,
#       url = paste0("hedgehog-assets/sprites/hedgehog_", move, "_32.png"),
#       frame_width = 32,
#       frame_height = 32,
#       frame_rate = 5
#     )
#   }
# }
# 
# shinyApp(ui, server)

## ----echo=FALSE---------------------------------------------------------------
knitr::include_graphics("assets/first_game_5_move_animation.gif")

## ----eval=FALSE---------------------------------------------------------------
# apples <- game$add_static_group("apples", "hedgehog-assets/perks/apple_20.png")
# 
# apples$create(260, 140)
# apples$create(640, 180)
# apples$create(730, 390)
# 
# score_text <- game$add_text(text = "Score: 0", id = "score", x = 20, y = 20)
# score <- game$add_state("score", 0)
# 
# game$add_overlap(
#   object_one = "hedgehog",
#   group = "apples",
#   browser_action = browser_actions({
#     apples$disable()
#     score$increment()
#     score_text$set(score$value())
#   }),
#   input = input
# )

## ----eval=FALSE---------------------------------------------------------------
# library(shiny)
# library(shinyphaser)
# shiny::addResourcePath("hedgehog-assets",
#   system.file("examples", "hedgehog", "www", package = "shinyphaser"))
# 
# game <- PhaserGame$new(width = 1500, height = 800)
# 
# ui <- tagList(
#   game$use_phaser()
# )
# 
# server <- function(input, output, session) {
#   game$set_shiny_session()
# 
#   floor <- game$add_image(
#     name = "floor",
#     url = "hedgehog-assets/terrain/grass.png",
#     x = 800,
#     y = 300
#   )
# 
#   hedgehog <- game$add_sprite(
#     name = "hedgehog",
#     url = "hedgehog-assets/sprites/hedgehog_32.png",
#     x = 140,
#     y = 260,
#     frame_width = 32,
#     frame_height = 32,
#     frame_count = 5,
#     frame_rate = 6
#   )
# 
#   hedgehog$add_player_controls(
#     directions = c("left", "right", "up", "down"),
#     speed = 220
#   )
# 
#   moves <- c("move_left", "move_right", "move_up", "move_down")
# 
#   for (move in moves) {
#     hedgehog$add_animation(
#       suffix = move,
#       url = paste0("hedgehog-assets/sprites/hedgehog_", move, "_32.png"),
#       frame_width = 32,
#       frame_height = 32,
#       frame_rate = 5
#     )
#   }
# 
#   score <- reactiveVal(0)
#   apples <- game$add_static_group("apples", "hedgehog-assets/perks/apple_20.png")
# 
#   apples$create(260, 140)
#   apples$create(640, 180)
#   apples$create(730, 390)
# 
#   score_text <- game$add_text(text = "Score: 0", id = "score", x = 20, y = 20)
# 
#   game$add_overlap(
#     object_one = "hedgehog",
#     group = "apples",
#     input = input
#   )
# }
# shinyApp(ui, server)

## ----echo=FALSE---------------------------------------------------------------
knitr::include_graphics("assets/first_game_6_overlap.gif")

## ----eval=FALSE---------------------------------------------------------------
# game$enable_terrain_collision("hedgehog")
# 
# rocks <- game$add_static_group(
#   name = "rocks",
#   url = "hedgehog-assets/obstacles/rock.png"
# )
# 
# rocks$create(
#   x = 400,
#   y = 400
# )
# rocks$create(
#   x = 600,
#   y = 500
# )

## ----eval=FALSE---------------------------------------------------------------
# game$add_collider(
#   object_one = "hedgehog",
#   group = "rocks"
# )

## ----eval=FALSE---------------------------------------------------------------
# library(shiny)
# library(shinyphaser)
# shiny::addResourcePath("hedgehog-assets",
#   system.file("examples", "hedgehog", "www", package = "shinyphaser"))
# 
# game <- PhaserGame$new(width = 1500, height = 800)
# 
# ui <- tagList(
#   game$use_phaser()
# )
# 
# server <- function(input, output, session) {
#   game$set_shiny_session()
# 
#   floor <- game$add_image(
#     name = "floor",
#     url = "hedgehog-assets/terrain/grass.png",
#     x = 800,
#     y = 300
#   )
# 
#   hedgehog <- game$add_sprite(
#     name = "hedgehog",
#     url = "hedgehog-assets/sprites/hedgehog_32.png",
#     x = 140,
#     y = 260,
#     frame_width = 32,
#     frame_height = 32,
#     frame_count = 5,
#     frame_rate = 6
#   )
# 
#   hedgehog$add_player_controls(
#     directions = c("left", "right", "up", "down"),
#     speed = 220
#   )
# 
#   game$enable_terrain_collision("hedgehog")
# 
#   moves <- c("move_left", "move_right", "move_up", "move_down")
# 
#   for (move in moves) {
#     hedgehog$add_animation(
#       suffix = move,
#       url = paste0("hedgehog-assets/sprites/hedgehog_", move, "_32.png"),
#       frame_width = 32,
#       frame_height = 32,
#       frame_rate = 5
#     )
#   }
# 
#   score <- reactiveVal(0)
#   apples <- game$add_static_group("apples", "hedgehog-assets/perks/apple_20.png")
# 
#   apples$create(260, 140)
#   apples$create(640, 180)
#   apples$create(730, 390)
# 
#   rocks <- game$add_static_group(
#     name = "rocks",
#     url = "hedgehog-assets/obstacles/rock.png"
#   )
# 
#   rocks$create(400, 200)
#   rocks$create(200, 300)
# 
#   score_text <- game$add_text(text = "Score: 0", id = "score", x = 20, y = 20)
# 
#   game$add_overlap(
#     object_one = "hedgehog",
#     group = "apples",
#     input = input
#   )
# 
#   game$add_collider(
#     object_one = "hedgehog",
#     group = "rocks"
#   )
# }
# shinyApp(ui, server)

## ----echo=FALSE---------------------------------------------------------------
knitr::include_graphics("assets/first_game_7_collide.gif")

## ----eval=FALSE---------------------------------------------------------------
# enemy <- game$add_sprite(
#   name = "badger",
#   url = "hedgehog-assets/sprites/badger_move_left_50.png",
#   x = 700,
#   y = 300,
#   frame_width = 50,
#   frame_height = 50,
#   frame_count = 1,
#   frame_rate = 1
# )
# 
# game$add_overlap(
#   object_one = "hedgehog",
#   object_two = "badger",
#   input = input
# )
# 
# shiny::observe({
#   shiny::invalidateLater(700, session)
#   dir <- sample(list(c(-1, 0), c(1, 0), c(0, -1), c(0, 1)), 1)[[1]]
#   enemy$set_in_motion(
#     dir_x = dir[1],
#     dir_y = dir[2],
#     speed = 70,
#     distance = 150,
#     lag = 0
#   )
# })

## ----echo=FALSE---------------------------------------------------------------
knitr::include_graphics("assets/first_game_8_full_example.gif")

## ----eval=FALSE---------------------------------------------------------------
# library(shiny)
# library(shinyphaser)
# shiny::addResourcePath("hedgehog-assets",
#   system.file("examples", "hedgehog", "www", package = "shinyphaser"))
# 
# game <- PhaserGame$new(width = 1500, height = 800)
# 
# ui <- tagList(
#   game$use_phaser()
# )
# 
# server <- function(input, output, session) {
#   game$set_shiny_session()
# 
#   floor <- game$add_image(
#     name = "floor",
#     url = "hedgehog-assets/terrain/grass.png",
#     x = 800,
#     y = 300
#   )
# 
#   hedgehog <- game$add_sprite(
#     name = "hedgehog",
#     url = "hedgehog-assets/sprites/hedgehog_32.png",
#     x = 140,
#     y = 260,
#     frame_width = 32,
#     frame_height = 32,
#     frame_count = 5,
#     frame_rate = 6
#   )
# 
#   hedgehog$add_player_controls(
#     directions = c("left", "right", "up", "down"),
#     speed = 220
#   )
# 
#   game$enable_terrain_collision("hedgehog")
# 
#   moves <- c("move_left", "move_right", "move_up", "move_down")
# 
#   for (move in moves) {
#     hedgehog$add_animation(
#       suffix = move,
#       url = paste0("hedgehog-assets/sprites/hedgehog_", move, "_32.png"),
#       frame_width = 32,
#       frame_height = 32,
#       frame_rate = 5
#     )
#   }
# 
#   score <- reactiveVal(0)
#   apples <- game$add_static_group("apples", "hedgehog-assets/perks/apple_20.png")
# 
#   apples$create(260, 140)
#   apples$create(640, 180)
#   apples$create(730, 390)
# 
#   rocks <- game$add_static_group(
#     name = "rocks",
#     url = "hedgehog-assets/obstacles/rock.png"
#   )
# 
#   rocks$create(400, 200)
#   rocks$create(200, 300)
# 
#   score_text <- game$add_text(text = "Score: 0", id = "score", x = 20, y = 20)
# 
#   game$add_overlap(
#     object_one = "hedgehog",
#     group = "apples",
#     input = input
#   )
# 
#   game$add_collider(
#     object_one = "hedgehog",
#     group = "rocks"
#   )
# 
#   enemy <- game$add_sprite(
#     name = "badger",
#     url = "hedgehog-assets/sprites/badger_move_left_50.png",
#     x = 700,
#     y = 300,
#     frame_width = 50,
#     frame_height = 50,
#     frame_count = 1,
#     frame_rate = 1
#   )
# 
#   game$add_overlap(
#     object_one = "hedgehog",
#     object_two = "badger",
#     input = input
#   )
# 
#   shiny::observe({
#     shiny::invalidateLater(700, session)
#     dir <- sample(list(c(-1, 0), c(1, 0), c(0, -1), c(0, 1)), 1)[[1]]
#     enemy$set_in_motion(
#       dir_x = dir[1],
#       dir_y = dir[2],
#       speed = 70,
#       distance = 150,
#       lag = 0
#     )
#   })
# }
# shinyApp(ui, server)

