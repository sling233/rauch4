execute as @s[scores={tank_damage_taken=201..}] run scoreboard players set @s tank_damage_taken 200

execute at @s[team=Red] positioned ^ ^ ^3.5 as @a[team=Red,tag=game,tag=!dead,distance=..3,limit=1] run tag @s add temp
execute at @s[team=Red] positioned ^ ^ ^3.5 as @a[team=Red,tag=game,tag=!dead,distance=..3,limit=1] run tag @s add temp
execute at @s[team=Blue] positioned ^ ^ ^3.5 as @a[team=Blue,tag=game,tag=!dead,distance=..3,limit=1] run tag @s add temp
execute at @s[team=Blue] positioned ^ ^ ^7.5 as @a[team=Blue,tag=game,tag=!dead,distance=..3,limit=1] run tag @s add temp
execute at @s as @a[tag=temp,sort=nearest,limit=1] run function rauch:game/ability/tank/r/hit
# execute if entity @a[tag=temp] run scoreboard players operation @s cool1 = @s cool1_target
execute if entity @a[tag=temp] run scoreboard players set @s tank_damage_taken 0
execute unless entity @a[tag=temp] at @s run playsound minecraft:entity.puffer_fish.blow_out master @s
execute unless entity @a[tag=temp] at @s run tellraw @s {"text":"No teammate in range!","color":"red"}
tag @a remove temp
