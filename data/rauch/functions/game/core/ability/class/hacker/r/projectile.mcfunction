execute at @s run tp @s ^ ^ ^0.3
execute at @s unless block ~ ~ ~ #nonsolid run kill @s
execute at @s run particle minecraft:dust 0.3 0.7 0.2 1 ~ ~ ~ 0 0 0 1 1 force

execute at @s run playsound minecraft:block.beehive.drip master @a ~ ~ ~ 0.2
#execute at @s run playsound minecraft:entity.phantom.flap master @a ~ ~ ~ 0.2

execute at @s[tag=red] positioned ~-0.5 ~-0.5 ~-0.5 as @a[dx=0,team=Blue,limit=1] run function rauch:game/core/ability/class/hacker/r/hit
execute at @s[tag=blu] positioned ~-0.5 ~-0.5 ~-0.5 as @a[dx=0,team=Red,limit=1] run function rauch:game/core/ability/class/hacker/r/hit

scoreboard players add @s click 1
execute as @s[scores={click=..4},tag=!hit] run function rauch:game/core/ability/class/hacker/r/projectile

scoreboard players reset @s click
