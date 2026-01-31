execute unless score @s projectileRNum matches 1.. run return 1

execute as @s[team=Red] at @s anchored eyes run summon armor_stand ^ ^ ^0.1 {Invulnerable:1b,Marker:0b,Invisible:1b,Tags:["red","r_h","setup","projectile"]}
execute as @s[team=Blue] at @s anchored eyes run summon armor_stand ^ ^ ^0.1 {Invulnerable:1b,Marker:0b,Invisible:1b,Tags:["blu","r_h","setup","projectile"]}

execute at @s anchored eyes run summon marker ^ ^ ^ {Tags:["vector"]}

execute as @e[type=armor_stand,tag=r_h,tag=setup,limit=1,sort=nearest] store result score t_pos_x1 temp run data get entity @s Pos[0] 1000000
execute as @e[type=armor_stand,tag=r_h,tag=setup,limit=1,sort=nearest] store result score t_pos_y1 temp run data get entity @s Pos[1] 1000000
execute as @e[type=armor_stand,tag=r_h,tag=setup,limit=1,sort=nearest] store result score t_pos_z1 temp run data get entity @s Pos[2] 1000000

execute as @e[type=marker,tag=vector,limit=1,sort=nearest] store result score t_pos_x2 temp run data get entity @s Pos[0] 1000000
execute as @e[type=marker,tag=vector,limit=1,sort=nearest] store result score t_pos_y2 temp run data get entity @s Pos[1] 1000000
execute as @e[type=marker,tag=vector,limit=1,sort=nearest] store result score t_pos_z2 temp run data get entity @s Pos[2] 1000000

execute store result entity @e[type=armor_stand,tag=r_h,tag=setup,sort=nearest,limit=1] Motion[0] double 0.000017 run scoreboard players operation t_pos_x1 temp -= t_pos_x2 temp
execute store result entity @e[type=armor_stand,tag=r_h,tag=setup,sort=nearest,limit=1] Motion[1] double 0.000017 run scoreboard players operation t_pos_y1 temp -= t_pos_y2 temp
execute store result entity @e[type=armor_stand,tag=r_h,tag=setup,sort=nearest,limit=1] Motion[2] double 0.000017 run scoreboard players operation t_pos_z1 temp -= t_pos_z2 temp

scoreboard players reset t_pos_x1 temp
scoreboard players reset t_pos_y1 temp
scoreboard players reset t_pos_z1 temp
scoreboard players reset t_pos_x2 temp
scoreboard players reset t_pos_y2 temp
scoreboard players reset t_pos_z2 temp

kill @e[type=marker,tag=vector]
tag @e[type=armor_stand,tag=r_h,tag=setup] remove setup

execute at @s run playsound minecraft:entity.player.attack.sweep master @a

execute if score @s projectileRNum = @s projectileRMax run scoreboard players operation @s cool1 = @s cool1_target
scoreboard players remove @s projectileRNum 1
