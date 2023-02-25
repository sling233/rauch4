scoreboard players remove @s armor_target 1
function rauch:game/mechanics/armor
scoreboard players set @s hacker_damage_timer 240
effect give @s minecraft:conduit_power 12 0 false
execute at @s run playsound minecraft:entity.allay.death master @s
execute as @a if score @s pnum = @e[type=marker,tag=hacker,tag=temp,limit=1] pnum at @s run playsound minecraft:entity.arrow.hit_player master @s
execute as @e[type=marker,tag=hacker,tag=temp] run function rauch:game/ability/hacker/r/kill
