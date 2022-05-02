tag @s add temp
scoreboard players reset @s zarzahn_f
function rauch:game/core/ui/bossbar/zarzahn/invisible
execute at @s run particle minecraft:instant_effect ~ ~1 ~ 0.2 0.4 0.2 1 30 force
execute at @s run particle minecraft:firework ~ ~1.4 ~ 0 0.1 0 0.2 30 force
execute as @e[type=marker,tag=zar_point] if score @s pnum = @a[tag=temp,limit=1] pnum run function rauch:game/core/ability/zarzahn/f/warp
execute at @s run particle minecraft:instant_effect ~ ~1 ~ 0.2 0.4 0.2 1 30 force
execute at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~1 ~ 0.5
execute at @s run particle minecraft:firework ~ ~1.4 ~ 0 0.1 0 0.2 30 force
tag @s remove temp
