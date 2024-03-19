# run_models_and_summarize.R
run_models_and_summarize <- function(england, team_strengths) {
  library(dplyr)
  library(ggplot2)
  library(knitr)
  
  england <- england %>%
    left_join(team_strengths, by = c("Season", "home" = "Team")) %>%
    rename(home_attacking_strength = attacking_strength, home_defensive_strength = defensive_strength) %>%
    left_join(team_strengths, by = c("Season", "visitor" = "Team")) %>%
    rename(away_attacking_strength = attacking_strength, away_defensive_strength = defensive_strength)
  
  # Poisson regression models
  model_home <- glm(hgoal ~ home_attacking_strength + away_defensive_strength, family = poisson(link = "log"), data = england)
  model_away <- glm(vgoal ~ away_attacking_strength + home_defensive_strength, family = poisson(link = "log"), data = england)
  
  # Summarize models
  home_model_summary <- summary(model_home)$coefficients
  away_model_summary <- summary(model_away)$coefficients
  
  print(kable(home_model_summary, caption = "Table 1: Home Team Model Summary"))
  print(kable(away_model_summary, caption = "Table 2: Away Team Model Summary"))
}
