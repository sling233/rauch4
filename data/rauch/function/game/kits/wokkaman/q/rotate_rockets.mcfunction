scoreboard players add @s wokkaman_rocket_phase 1
scoreboard players operation t_angle temp = @s wokkaman_rocket_phase
execute store result score t_player_angle temp run data get entity @s Rotation[0]
execute as @s[tag=t_grounded] run scoreboard players set t_is_grounded temp 1
execute as @s[predicate=rauch:sneak] run scoreboard players set t_is_sneaking temp 1
execute as @s[predicate=rauch:flying] run scoreboard players set t_is_flying temp 1

scoreboard players operation t_pnum temp = @s pnum
execute store result score t_player_z temp run data get entity @s Pos[2] 1000
execute as @s[tag=!t_grounded] store result score t_player_x temp run data get entity @s Pos[0] 1000
tag @s add temp
execute as @e[type=item_display,tag=wok_rocket,tag=rotating] if score @s pnum = t_pnum temp at @s run function rauch:game/kits/wokkaman/q/rocket_rotate
tag @s remove temp
scoreboard players reset t_pnum temp

scoreboard players reset t_angle temp
scoreboard players reset t_is_grounded temp
scoreboard players reset t_is_sneaking temp
scoreboard players reset t_is_flying temp
scoreboard players reset t_player_angle temp
scoreboard players reset t_player_z temp
scoreboard players reset t_player_x temp
