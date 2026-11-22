## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----eval=FALSE---------------------------------------------------------------
# game$add_control(
#   key = "Space",
#   browser_action = browser_actions(
#     jump_sound$play(),
#     hero$set_velocity_y(-600),
#     hero$play_animation("hero_jump", duration = 250)
#   )
# )

## ----eval=FALSE---------------------------------------------------------------
# # Not valid browser work
# game$add_control(
#   key = "Space",
#   browser_action = browser_actions(
#     score(score() + 1),
#     save_score_to_database()
#   )
# )

## ----eval=FALSE---------------------------------------------------------------
# score <- shiny::reactiveVal(0)
# 
# game$add_overlap(
#   object_one = "hero",
#   object_two = "coin",
#   input = input,
#   server_action = function(event) {
#     score(score() + 1)
#     saveRDS(score(), "score.rds")
#   }
# )

## ----eval=FALSE---------------------------------------------------------------
# game$add_control(
#   key = "Space",
#   input = input,
#   server_action = function(event) {
#     showNotification(paste("Pressed", event$code))
#   }
# )

## ----eval=FALSE---------------------------------------------------------------
# game$add_overlap(
#   object_one = "hero",
#   object_two = "wizard",
#   input = input,
#   browser_action = browser_actions(
#     talk_prompt$show(),
#     wizard$play_animation("wizard_talk"),
#     greeting_sound$play()
#   ),
#   server_action = function(event) {
#     visits_to_wizard(visits_to_wizard() + 1)
#     load_dialogue_from_database()
#   }
# )

## ----eval=FALSE---------------------------------------------------------------
# handle_space <- function(event) {
#   if (sword_in_range && !has_sword) {
#     has_sword <<- TRUE
#     sword$destroy()
#     inventory_text$set("weapon: sword")
#     return(invisible(NULL))
#   }
# 
#   if (wizard_in_range) {
#     shinyalert::shinyalert("The wizard has a quest for you.")
#     return(invisible(NULL))
#   }
# 
#   attack_enemy_in_range()
# }
# 
# game$add_control(
#   key = "Space",
#   input = input,
#   server_action = handle_space
# )

## ----eval=FALSE---------------------------------------------------------------
# # Correct
# browser_action = browser_actions(sound$play(), hero$destroy())
# 
# # Incorrect
# browser_action = list(sound$play(), hero$destroy())

## ----eval=FALSE---------------------------------------------------------------
# # input is required because this callback runs through Shiny
# game$add_control(
#   "Space",
#   input = input,
#   server_action = function(event) do_server_work()
# )

