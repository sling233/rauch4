scoreboard players operation @s 2 = @e[type=marker,tag=teleporter,tag=temp,limit=1] pnum
execute at @s as @a if score @s pnum = @p 2 run tag @s add tele

tp @a[tag=tele] @s
execute as @a[tag=tele] at @s run tp @s ~ ~ ~ ~ 0
execute as @a[tag=tele] at @s run tp @s ^ ^ ^-1
# if player's feet are in ground
execute as @a[tag=tele] at @s unless block ~ ~ ~ #minecraft:nonsolid if block ~ ~1 ~ #minecraft:nonsolid align y positioned ~ ~1 ~ run tp @s ~ ~ ~
# if player's feet and eyes are in ground
execute as @a[tag=tele] at @s unless block ~ ~ ~ #minecraft:nonsolid run tp @s ^ ^ ^0.5
execute as @a[tag=tele] at @s unless block ~ ~ ~ #minecraft:nonsolid run tp @s ^ ^ ^0.5

tag @a[tag=tele] remove tele

execute at @s positioned ^ ^ ^-2 run playsound minecraft:entity.enderman.teleport master @a

attribute @s minecraft:generic.attack_damage modifier add teleweak -0.4 add_multiplied_total
scoreboard players set @s teleweak 60
effect give @s slowness 3 1 true
effect give @s unluck 3 1
execute as @e[type=marker,tag=teleporter,tag=temp] run function rauch:game/ability/teleporter/r/kill
