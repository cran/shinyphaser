## ----include=FALSE------------------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>")

## ----runner-app, eval=FALSE---------------------------------------------------
# library(shiny)
# library(shinyphaser)
# 
# addResourcePath("dash-assets", system.file(
#   "examples", "geometry_dash", "www", package = "shinyphaser"
# ))
# 
# game <- PhaserGame$new(width = 960, height = 480, gravity_y = 1400)
# ui <- tagList(
#   tags$p("Space to start and jump. Avoid the spikes and reach the green line."),
#   tags$button(type = "button", onclick = "window.location.reload()", "Restart"),
#   game$use_phaser()
# )
# 
# server <- function(input, output, session) {
#   game <- PhaserGame$new(width = 960, height = 480, gravity_y = 1400)
#   game$set_shiny_session(session)
#   game$set_world_bounds(1800, 480)
# 
#   alive <- game$add_state("alive", TRUE)
#   grounded <- game$add_state("grounded", FALSE)
# 
#   game$add_rectangle("floor_art", 900, 440, 1800, 80, "0x243750")
#   game$add_collision_rectangle("floor", 900, 440, 1800, 80)
#   player <- game$add_sprite("cube", "dash-assets/cube.png", 120, 384,
#                              frame_width = 32, frame_height = 32)
#   player$follow_camera()
# 
#   status <- game$add_text("Press Space to start", "status", 24, 24)
#   status$set_scroll_factor(0)
#   status$set_depth(20)
# 
#   game$add_collider("cube", "floor", browser_action = browser_actions({
#     grounded$set(TRUE)
#   }))
# 
#   game$add_control("Space", browser_action = browser_actions({
#     if (alive$is_true() && grounded$is_true()) {
#       grounded$set(FALSE)
#       player$set_velocity_x(260)
#       player$set_velocity_y(-480)
#       status$set("Keep jumping!")
#     }
#   }))
# 
#   for (x in c(560, 900, 1240)) {
#     name <- paste0("spike_", x)
#     game$add_image(paste0(name, "_art"), "dash-assets/spike.png", x, 380)
#     game$add_collision_rectangle(name, x, 385, 20, 30)
#     game$add_overlap("cube", name, browser_action = browser_actions({
#       if (alive$is_true()) {
#         alive$set(FALSE)
#         player$stop_motion()
#         status$set("Crashed! Click Restart.")
#       }
#     }))
#   }
# 
#   game$add_rectangle("finish_art", 1600, 300, 8, 200, "0x59f5d0")
#   game$add_collision_rectangle("finish", 1600, 300, 8, 200)
#   game$add_overlap("cube", "finish", browser_action = browser_actions({
#     if (alive$is_true()) {
#       alive$set(FALSE)
#       player$stop_motion()
#       status$set("Level complete! Click Restart.")
#     }
#   }))
# }
# 
# shinyApp(ui, server)

## ----echo=FALSE, out.width="100%", fig.alt="Geometry Dash example with a cube jumping over spikes"----
knitr::include_graphics("assets/geometry_dash_example.gif")

