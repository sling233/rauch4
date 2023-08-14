execute as @a run title @s title {"text":"Tie","color":"yellow"}

execute as @a run scoreboard players operation @s stats_g_damage_d += Global 20
execute as @a run scoreboard players operation @s stats_g_damage_d -= Global 2
execute as @a run scoreboard players operation @s stats_g_damage_d /= Global 20
execute as @a run scoreboard players operation @s stats_g_damage_t /= Global 20

execute as @a run tellraw @s ""
execute as @a run tellraw @s [{"text":"---------------- ","color":"yellow"},{"text":"Tie","color":"yellow"},{"text":" -----------------","color":"yellow"}]
execute if score Global mode matches 0 run tellraw @a [{"text":"Survivors: ","color":"yellow"},{"selector":"@a[tag=game,tag=!dead]"}]
execute if score Global mode matches 1..2 run tellraw @a [{"text":"Winner: ","color":"yellow"},{"text":"Undetermined"}]
execute if score Global mode matches 1 as @a run tellraw @s [{"text":"Points Scored: ","color":"yellow"},{"score":{"name":"@s","objective":"stats_g_points_scored"}}]
execute if score Global mode matches 4 as @a run tellraw @s [{"text":"Points Scored: ","color":"yellow"},{"score":{"name":"@s","objective":"stats_g_points_scored"}}]
execute as @a run tellraw @s [{"text":"Kills: ","color":"yellow"},{"score":{"name":"@s","objective":"stats_g_kills"}}]
execute as @a run tellraw @s [{"text":"Deaths: ","color":"yellow"},{"score":{"name":"@s","objective":"stats_g_deaths"}}]
execute as @a run tellraw @s [{"text":"Damage Dealt: ","color":"yellow"},{"score":{"name":"@s","objective":"stats_g_damage_d"}}]
execute as @a run tellraw @s [{"text":"Damage Taken: ","color":"yellow"},{"score":{"name":"@s","objective":"stats_g_damage_t"}}]
tellraw @a {"text":"---------------------------------------- ","color":"yellow"}
execute as @a run tellraw @s ""

scoreboard players set Global gameend 1
