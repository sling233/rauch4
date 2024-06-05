# as player found, projectile has tag temp
# add player to wok_bow_tag list
execute store result storage temp pnum int 1 run scoreboard players get @s pnum
data modify storage macros data.list append from storage temp pnum
# by adding the tag here i dont have to get and write the data every player in case it finds multiple players per tick, i can write once at the end
tag @s add wok_bow_tagged

tag @e[type=marker,tag=temp,tag=wok_bow] remove searching
execute at @e[type=marker,tag=temp,tag=wok_bow] run particle minecraft:spit ~ ~ ~ 0.1 0.1 0.1 0.3 50 force
execute at @e[type=marker,tag=temp,tag=wok_bow] at @s run playsound minecraft:entity.breeze.jump master @a
scoreboard players operation @e[type=marker,tag=temp,tag=wok_bow,limit=1] zarzahn_hooking = @s pnum
scoreboard players operation Global t_target_pnum = @s pnum

tag @s add temp2
execute as @e[type=marker,tag=temp,tag=wok_bow] at @s facing entity @a[tag=temp2] eyes run tp @s ~ ~ ~ ~ ~
tag @s remove temp2
