#particle minecraft:dust_color_transition 0.7 0 0.3 1 0 0 0 ~ ~ ~ 2 2 2 0.1 700 force
execute at @s run particle minecraft:firework ~ ~ ~ 0.1 0.1 0.1 0.7 100 force
execute at @s run particle minecraft:firework ~ ~ ~ 0.1 0.1 0.1 0.25 200 force
execute at @s run particle minecraft:electric_spark ~ ~ ~ 0.1 0.1 0.1 4 300 force
execute at @s run particle minecraft:explosion ~ ~ ~ 1 1 1 1 20 force
execute at @s run particle minecraft:flash ~ ~ ~ 0.1 0.1 0.1 1 1 force
execute at @s run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1 1


scoreboard players operation t_pnum global = @s pnum
execute as @s[tag=red] at @s as @a[team=Blue,distance=..5] run function rauch:game/ability/wokkaman/q/hit
execute as @s[tag=blu] at @s as @a[team=Red,distance=..5] run function rauch:game/ability/wokkaman/q/hit
scoreboard players reset t_pnum global

tag @s add hit
kill @s
