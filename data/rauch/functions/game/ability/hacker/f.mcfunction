execute at @s[team=Red] positioned ^ ^ ^3.5 as @a[team=Red,tag=game,tag=!dead,distance=..3] run scoreboard players set @s hacker_ability 15
execute at @s[team=Red] positioned ^ ^ ^7.5 as @a[team=Red,tag=game,tag=!dead,distance=..3] run scoreboard players set @s hacker_ability 15
execute at @s[team=Blue] positioned ^ ^ ^3.5 as @a[team=Blue,tag=game,tag=!dead,distance=..3] run scoreboard players set @s hacker_ability 15
execute at @s[team=Blue] positioned ^ ^ ^7.5 as @a[team=Blue,tag=game,tag=!dead,distance=..3] run scoreboard players set @s hacker_ability 15

execute at @s positioned ~ ~1.6 ~ run particle minecraft:happy_villager ^ ^ ^2 0.8 0.8 0.8 1 80 force
execute at @s positioned ~ ~1.6 ~ run particle minecraft:happy_villager ^ ^ ^5.5 1.2 1.2 1.2 1 180 force
execute at @s run playsound minecraft:entity.player.levelup master @a
#scoreboard players operation @s cool3 = @s cool3_target
scoreboard players remove @s hacker_charges 1
