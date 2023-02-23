execute at @s run summon marker ~ ~ ~ {Tags:["setup","zar_point"]}
#nur zur sicherheit:
execute at @s as @e[type=marker,tag=zar_point] if score @s pnum = @p pnum run kill @s

execute at @s run scoreboard players operation @e[type=marker,tag=setup,tag=zar_point,limit=1,sort=nearest] pnum = @s pnum
execute at @s[team=Red] run tag @e[type=marker,tag=setup,tag=zar_point,limit=1,sort=nearest] add red
execute at @s[team=Blue] run tag @e[type=marker,tag=setup,tag=zar_point,limit=1,sort=nearest] add blu
execute at @s run tag @e[type=marker,tag=setup,tag=zar_point,limit=1,sort=nearest] remove setup

scoreboard players set @s zarzahn_f 300
function rauch:game/ui/bossbar/zarzahn/visible

scoreboard players operation @s cool3 = @s cool3_target
