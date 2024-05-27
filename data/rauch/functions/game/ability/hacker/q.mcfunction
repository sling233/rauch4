execute as @s[team=Red] at @s anchored eyes run summon armor_stand ^ ^ ^0.1 {Small:1b,Invulnerable:1b,Invisible:1b,Tags:["red","hacker_bomb","setup","projectile","remove_on_death"]}
execute as @s[team=Blue] at @s anchored eyes run summon armor_stand ^ ^ ^0.1 {Small:1b,Invulnerable:1b,Invisible:1b,Tags:["blu","hacker_bomb","setup","projectile","remove_on_death"]}

execute as @s at @s anchored eyes run summon marker ^ ^ ^ {Tags:["vector"]}

execute as @s as @e[type=armor_stand,tag=hacker_bomb,tag=setup,limit=1,sort=nearest] store result score @s xPos run data get entity @s Pos[0] 1000000
execute as @s as @e[type=armor_stand,tag=hacker_bomb,tag=setup,limit=1,sort=nearest] store result score @s yPos run data get entity @s Pos[1] 1000000
execute as @s as @e[type=armor_stand,tag=hacker_bomb,tag=setup,limit=1,sort=nearest] store result score @s zPos run data get entity @s Pos[2] 1000000

execute as @s as @e[type=marker,tag=vector,limit=1,sort=nearest] store result score @s xPos run data get entity @s Pos[0] 1000000
execute as @s as @e[type=marker,tag=vector,limit=1,sort=nearest] store result score @s yPos run data get entity @s Pos[1] 1000000
execute as @s as @e[type=marker,tag=vector,limit=1,sort=nearest] store result score @s zPos run data get entity @s Pos[2] 1000000

execute as @s run scoreboard players operation @e[type=armor_stand,limit=1,tag=hacker_bomb,sort=nearest,tag=setup] xPos -= @e[type=marker,limit=1,tag=vector,sort=nearest] xPos
execute as @s run scoreboard players operation @e[type=armor_stand,limit=1,tag=hacker_bomb,sort=nearest,tag=setup] yPos -= @e[type=marker,limit=1,tag=vector,sort=nearest] yPos
execute as @s run scoreboard players operation @e[type=armor_stand,limit=1,tag=hacker_bomb,sort=nearest,tag=setup] zPos -= @e[type=marker,limit=1,tag=vector,sort=nearest] zPos

execute as @s as @e[type=armor_stand,tag=hacker_bomb,tag=setup,sort=nearest] store result entity @s Motion[0] double 0.000015 run scoreboard players get @s xPos
execute as @s as @e[type=armor_stand,tag=hacker_bomb,tag=setup,sort=nearest] store result entity @s Motion[1] double 0.000015 run scoreboard players get @s yPos
execute as @s as @e[type=armor_stand,tag=hacker_bomb,tag=setup,sort=nearest] store result entity @s Motion[2] double 0.000015 run scoreboard players get @s zPos

kill @e[type=marker,tag=vector]
scoreboard players operation @e[type=armor_stand,tag=setup,tag=hacker_bomb,limit=1] pnum = @s pnum
tag @e[type=armor_stand,tag=hacker_bomb,tag=setup] remove setup

execute at @s run playsound minecraft:entity.player.attack.sweep master @a

scoreboard players operation @s cool2 = @s cool2_target
