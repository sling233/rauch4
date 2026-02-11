execute unless score @s cool2 matches 0 run return 1

scoreboard players operation @s cool2 = @s cool2_target
execute at @s run playsound minecraft:block.beacon.power_select master @a
execute if predicate rauch:on_ground run tag @s add flyer_q_ground

attribute @s minecraft:gravity base set 0
effect give @s minecraft:levitation 1 0 true
#execute as @s[tag=!flyer_q_ground] run effect give @s minecraft:levitation 1 0 true

scoreboard players set @s flyerQSchedule -60
execute at @s[team=Red] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:40,Tags:["red","setup","flyerq","remove_on_death"]}
execute at @s[team=Blue] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:40,Tags:["blu","setup","flyerq","remove_on_death"]}
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=setup,tag=flyerq,limit=1] pnum = @s pnum
execute as @e[type=minecraft:area_effect_cloud,tag=setup,tag=flyerq,limit=1] run function rauch:game/kits/pikka/q/floor


execute if entity @s[tag=!flyer_q_ground] run return 0

function rauch:game/mechanics/vertical_launch/launch {power:130}
