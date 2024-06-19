execute at @s run playsound minecraft:block.beacon.power_select master @a
execute as @s[nbt={OnGround:1b}] run tag @s add flyer_q_ground
execute as @s[tag=!flyer_q_ground] run attribute @s minecraft:generic.gravity base set 0
execute as @s[tag=!flyer_q_ground] run effect give @s minecraft:levitation 1 0 true
execute as @s[tag=flyer_q_ground] run attribute @s minecraft:generic.gravity base set -0.4
scoreboard players set @s flyerQSchedule -60
execute at @s[team=Red] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:40,Tags:["red","setup","flyerq"]}
execute at @s[team=Blue] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:40,Tags:["blu","setup","flyerq"]}
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=setup,tag=flyerq,limit=1] pnum = @s pnum
execute as @e[type=minecraft:area_effect_cloud,tag=setup,tag=flyerq,limit=1] run function rauch:game/ability/flyer/q/floor
scoreboard players operation @s cool2 = @s cool2_target
