#particle minecraft:dust_color_transition 0.7 0 0.3 1 0 0 0 ~ ~ ~ 2 2 2 0.1 700 force
#execute at @s run particle minecraft:firework ~ ~ ~ 0.1 0.1 0.1 0.7 100 force
#execute at @s run particle minecraft:firework ~ ~ ~ 0.1 0.1 0.1 0.25 200 force
execute at @s run particle smoke ~ ~ ~ 0.1 0.1 0.1 0.4 50 force
execute at @s run particle large_smoke ~ ~ ~ 0.1 0.1 0.1 0.25 100 force
execute at @s run particle dust{color:[0.1,0.1,0.1],scale:1} ~ ~ ~ 2 2 2 1 200 force
execute at @s run particle electric_spark ~ ~ ~ 0.1 0.1 0.1 4 300 force
execute at @s run particle explosion ~ ~ ~ 1.4 1.4 1.4 1 10 force
execute at @s run particle flash ~ ~ ~ 0.1 0.1 0.1 1 1 force
execute at @s run playsound entity.firework_rocket.blast master @a ~ ~ ~ 1 1
execute at @s run playsound minecraft:entity.firework_rocket.large_blast master @a ~ ~ ~ 1 1


scoreboard players operation t_pnum temp = @s pnum
execute as @s[tag=red] at @s as @a[team=Blue,distance=..5] run function rauch:game/ability/wokkaman/q/hit
execute as @s[tag=blu] at @s as @a[team=Red,distance=..5] run function rauch:game/ability/wokkaman/q/hit
scoreboard players reset t_pnum temp

tag @s add hit
kill @s
