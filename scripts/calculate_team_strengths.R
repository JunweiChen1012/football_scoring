# calculate_team_strengths.R
calculate_team_strengths <- function(england) {
  library(dplyr)
  
  team_strengths <- england %>%
    group_by(Season, home) %>%
    summarise(home_goals_scored_avg = mean(hgoal), home_goals_conceded_avg = mean(vgoal), .groups = "drop") %>%
    rename(Team = home) %>%
    bind_rows(england %>%
                group_by(Season, visitor) %>%
                summarise(away_goals_scored_avg = mean(vgoal), away_goals_conceded_avg = mean(hgoal), .groups = "drop") %>%
                rename(Team = visitor)) %>%
    group_by(Season, Team) %>%
    summarise(attacking_strength = mean(home_goals_scored_avg, na.rm = TRUE) + mean(away_goals_scored_avg, na.rm = TRUE),
              defensive_strength = mean(home_goals_conceded_avg, na.rm = TRUE) + mean(away_goals_conceded_avg, na.rm = TRUE), .groups = "drop")
  
  return(team_strengths)
}
