title @a subtitle ""
execute as @a[team=Red] run title @s title {"text":"Defeat","color":"red"}
execute as @a[team=Blue] run title @s title {"text":"Victory","color":"gold"}

execute as @a run scoreboard players operation @s stats_g_damage_d += Global 20
execute as @a run scoreboard players operation @s stats_g_damage_d -= Global 2
execute as @a run scoreboard players operation @s stats_g_damage_d /= Global 20
execute as @a run scoreboard players operation @s stats_g_damage_t /= Global 20

#execute as @a[team=Red] at @s run playsound minecraft:music_disc.13 record @s
#execute as @a[team=Blue] at @s run playsound minecraft:music_disc.11 record @s

execute as @a run tellraw @s ""
execute as @a[team=Red] run tellraw @s [{"text":"---------------- ","color":"yellow"},{"text":"Defeat","color":"red"},{"text":" -----------------","color":"yellow"}]
execute as @a[team=Blue] run tellraw @s [{"text":"---------------- ","color":"yellow"},{"text":"Victory","color":"green"},{"text":" ----------------","color":"yellow"}]
execute as @a[tag=!game] run tellraw @s [{"text":"--------------- ","color":"yellow"},{"text":"Game Ended","color":"yellow"},{"text":" --------------","color":"yellow"}]
execute if score Global mode matches 0 run tellraw @a [{"text":"Survivors: ","color":"yellow"},{"selector":"@a[tag=game,tag=!dead]"}]
execute as @a run tellraw @s [{"text":"Winner: ","color":"yellow"},{"text":"Team Blue","color":"blue"}]
execute as @a[tag=game] run tellraw @s [{"text":"Kills: ","color":"yellow"},{"score":{"name":"@s","objective":"stats_g_kills"}}]
execute as @a[tag=game] run tellraw @s [{"text":"Deaths: ","color":"yellow"},{"score":{"name":"@s","objective":"stats_g_deaths"}}]
execute if score Global mode matches 1 as @a[tag=game] run tellraw @s [{"text":"Points Scored: ","color":"yellow"},{"score":{"name":"@s","objective":"stats_g_points_scored"}}]
execute if score Global mode matches 4 as @a[tag=game] run tellraw @s [{"text":"Points Scored: ","color":"yellow"},{"score":{"name":"@s","objective":"stats_g_points_scored"}}]
execute as @a[tag=game] run tellraw @s [{"text":"Damage Dealt: ","color":"yellow"},{"score":{"name":"@s","objective":"stats_g_damage_d"}}]
execute as @a[tag=game] run tellraw @s [{"text":"Damage Taken: ","color":"yellow"},{"score":{"name":"@s","objective":"stats_g_damage_t"}}]
tellraw @a {"text":"---------------------------------------- ","color":"yellow"}
execute as @a run tellraw @s ""

scoreboard players set Global gameend 1
