#if wokkaman has a hook out, buffer invert
execute at @s as @e[type=marker,tag=wok_hook] if score @s pnum = @p pnum run return run function rauch:game/kits/wokkaman/r/buffer_hook_invert
# if wokkaman has someone on the hook, they can invert once
execute as @s[scores={zarzahn_hooking=1..},tag=!inverted_hook] run return run function rauch:game/kits/wokkaman/hr
# can't throw another hook if they are alread hooking
execute if score @s zarzahn_hooking matches 1.. run return 1

execute unless score @s cool1 matches 0 run return 1


execute at @s[team=Red] run summon marker ~ ~ ~ {Tags:["projectile","wok_hook","setup","red","remove_on_death"]}
execute at @s[team=Blue] run summon marker ~ ~ ~ {Tags:["projectile","wok_hook","setup","blu","remove_on_death"]}
execute at @s rotated as @s run tp @e[type=marker,tag=setup,tag=wok_hook] ~ ~1.6 ~ ~ ~
scoreboard players operation @e[type=marker,tag=setup,tag=wok_hook,limit=1] pnum = @s pnum
tag @e[type=marker,tag=setup,tag=wok_hook] remove setup
execute at @s run playsound minecraft:entity.bat.takeoff master @a ~ ~ ~ 0.5

scoreboard players operation @s cool1 = @s cool1_target
