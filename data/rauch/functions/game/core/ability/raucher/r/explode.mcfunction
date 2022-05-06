#particle minecraft:dust_color_transition 0.7 0 0.3 1 0 0 0 ~ ~ ~ 2 2 2 0.1 700 force
execute at @s run particle minecraft:firework ~ ~ ~ 0.1 0.1 0.1 0.7 100 force
execute at @s run particle minecraft:firework ~ ~ ~ 0.1 0.1 0.1 0.25 200 force
execute at @s run particle minecraft:electric_spark ~ ~ ~ 0.1 0.1 0.1 4 300 force
execute at @s run particle minecraft:explosion ~ ~ ~ 1 1 1 1 20 force
execute at @s run particle minecraft:flash ~ ~ ~ 0.1 0.1 0.1 1 1 force
execute at @s run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1 1

execute as @a if score @s pnum = @e[type=marker,tag=raucher_rocket,tag=temp,limit=1] pnum run scoreboard players set @s slime_despawn_timer -5

function rauch:game/core/ability/raucher/r/spawn


tag @s add hit
kill @s
