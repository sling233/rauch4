execute at @s[team=Red] positioned ^ ^ ^3.5 as @a[team=Red,tag=game,tag=!dead,distance=..3,limit=1] run tag @s add temp
execute at @s[team=Red] positioned ^ ^ ^3.5 as @a[team=Red,tag=game,tag=!dead,distance=..3,limit=1] run tag @s add temp
execute at @s[team=Blue] positioned ^ ^ ^3.5 as @a[team=Blue,tag=game,tag=!dead,distance=..3,limit=1] run tag @s add temp
execute at @s[team=Blue] positioned ^ ^ ^7.5 as @a[team=Blue,tag=game,tag=!dead,distance=..3,limit=1] run tag @s add temp
execute at @s as @a[tag=temp,sort=nearest,limit=1] run function rauch:game/kits/tank/q/hit
execute if entity @a[tag=temp] run scoreboard players operation @s cool2 = @s cool2_target
execute unless entity @a[tag=temp] at @s run playsound minecraft:entity.puffer_fish.blow_out master @s
execute unless entity @a[tag=temp] at @s run tellraw @s {"text":"No teammate in range!","color":"red"}
tag @a remove temp
#execute at @s positioned ~ ~1.6 ~ run particle minecraft:happy_villager ^ ^ ^2 0.8 0.8 0.8 1 80 force
#execute at @s positioned ~ ~1.6 ~ run particle minecraft:happy_villager ^ ^ ^5.5 1.2 1.2 1.2 1 180 force
