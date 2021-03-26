#Load packages needed

library(FitzRoy, tidyverse)

#Load the years in which Mason Cox played AFL games

fryzigg_stats <- fitzRoy::fetch_player_stats_fryzigg(2016:2021)

#Filter out stats to find Mason Cox

fryzigg_stats_cox <- fryzigg_stats %>% filter(player_first_name == "Mason", player_last_name == "Cox")

#Find mean of shots at goal
fryzigg_stats_cox$shots_at_goal %>% mean()

#Apply only his shots at goal to a table to look at frequiencies

cox_shots_table <- fryzigg_stats_cox$shots_at_goal %>% table()

#Print table to confirm

cox_shots_table

#Create line graph and plot of the number

barplot(cox_shots_table, type = "o")

#Will come back later to learn how to analyse on a game-by-game basis on and fix up the above bar plot