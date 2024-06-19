execute as @s[team=Red] unless score Global control matches ..0 run scoreboard players remove Global control 1
execute as @s[team=Red] unless score Global control matches ..0 run scoreboard players add @s stats_g_points_scored 1
execute as @s[team=Blue] unless score Global control matches 200.. run scoreboard players add Global control 1
execute as @s[team=Blue] unless score Global control matches 200.. run scoreboard players add @s stats_g_points_scored 1
