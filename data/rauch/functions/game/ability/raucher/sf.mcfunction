execute as @s[team=Red] at @s anchored eyes run summon armor_stand ^ ^ ^0.1 {Invulnerable:1b,Marker:0b,Invisible:1b,Tags:["red","r_h","setup","projectile"]}
execute as @s[team=Blue] at @s anchored eyes run summon armor_stand ^ ^ ^0.1 {Invulnerable:1b,Marker:0b,Invisible:1b,Tags:["blu","r_h","setup","projectile"]}

execute as @s at @s anchored eyes run summon area_effect_cloud ^ ^ ^ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["vector"]}

execute as @s as @e[type=armor_stand,tag=r_h,tag=setup,limit=1,sort=nearest] store result score @s xPos run data get entity @s Pos[0] 1000000
execute as @s as @e[type=armor_stand,tag=r_h,tag=setup,limit=1,sort=nearest] store result score @s yPos run data get entity @s Pos[1] 1000000
execute as @s as @e[type=armor_stand,tag=r_h,tag=setup,limit=1,sort=nearest] store result score @s zPos run data get entity @s Pos[2] 1000000

execute as @s as @e[type=area_effect_cloud,tag=vector,limit=1,sort=nearest] store result score @s xPos run data get entity @s Pos[0] 1000000
execute as @s as @e[type=area_effect_cloud,tag=vector,limit=1,sort=nearest] store result score @s yPos run data get entity @s Pos[1] 1000000
execute as @s as @e[type=area_effect_cloud,tag=vector,limit=1,sort=nearest] store result score @s zPos run data get entity @s Pos[2] 1000000

execute as @s run scoreboard players operation @e[type=armor_stand,limit=1,tag=r_h,sort=nearest,tag=setup] xPos -= @e[type=area_effect_cloud,limit=1,tag=vector,sort=nearest] xPos
execute as @s run scoreboard players operation @e[type=armor_stand,limit=1,tag=r_h,sort=nearest,tag=setup] yPos -= @e[type=area_effect_cloud,limit=1,tag=vector,sort=nearest] yPos
execute as @s run scoreboard players operation @e[type=armor_stand,limit=1,tag=r_h,sort=nearest,tag=setup] zPos -= @e[type=area_effect_cloud,limit=1,tag=vector,sort=nearest] zPos

execute as @s as @e[type=armor_stand,tag=r_h,tag=setup,sort=nearest] store result entity @s Motion[0] double 0.000017 run scoreboard players get @s xPos
execute as @s as @e[type=armor_stand,tag=r_h,tag=setup,sort=nearest] store result entity @s Motion[1] double 0.000017 run scoreboard players get @s yPos
execute as @s as @e[type=armor_stand,tag=r_h,tag=setup,sort=nearest] store result entity @s Motion[2] double 0.000017 run scoreboard players get @s zPos

kill @e[type=area_effect_cloud,tag=vector]
tag @e[type=armor_stand,tag=r_h,tag=setup] remove setup

execute at @s run playsound minecraft:entity.player.attack.sweep master @a

execute if score @s projectileRNum = @s projectileRMax run scoreboard players operation @s cool3 = @s cool3_target
scoreboard players remove @s projectileRNum 1
