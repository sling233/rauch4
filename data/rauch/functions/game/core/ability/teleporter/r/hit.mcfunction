scoreboard players operation @s 0 = @e[type=marker,tag=teleporter,tag=temp,limit=1] pnum
execute at @s as @a if score @s pnum = @p 0 run tag @s add tele

tp @a[tag=tele] @s
execute as @a[tag=tele] at @s run tp @s ~ ~ ~ ~ 0
execute as @a[tag=tele] at @s run tp @s ^ ^ ^-2
effect give @a[tag=tele] resistance 4 1 true
tag @a[tag=tele] remove tele

execute at @s positioned ^ ^ ^-2 run playsound minecraft:entity.enderman.teleport master @a

#why not -0.5 wtf this actually makes no sense
attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-1 "teleweak" -0.167 multiply_base
scoreboard players set @s teleweak 80
effect give @s slowness 4 1
execute as @e[type=marker,tag=teleporter,tag=temp,limit=1] run tag @s add hit
execute as @e[type=marker,tag=teleporter,tag=temp,limit=1] run kill @s
