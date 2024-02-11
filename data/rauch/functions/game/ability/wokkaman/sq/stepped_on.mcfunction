# as player that is being stepped on
scoreboard players set @s stun 10
execute at @s[team=Red] positioned ~-1 ~ ~-1 as @a[tag=game,tag=!dead,team=Blue,dx=2,dz=2,dy=5] run tag @s add t_damager
execute at @s[team=Blue] positioned ~-1 ~ ~-1 as @a[tag=game,tag=!dead,team=Red,dx=2,dz=2,dy=5] run tag @s add t_damager
execute at @s unless block ~ ~-0.4 ~ #minecraft:nonsolid run return run function rauch:game/ability/wokkaman/sq/floor_reached
execute unless entity @a[tag=t_damager] run return run function rauch:game/ability/wokkaman/sq/un_step_on

execute at @s as @e[type=armor_stand,tag=stun] if score @s pnum = @p pnum at @s run tp @s ~ ~-0.2 ~
execute at @s as @e[type=boat,tag=wok_boat] if score @s pnum = @p pnum run tp @s ~ ~ ~

tag @s add t_damage_target
execute store result score .t_mod temp run time query gametime
scoreboard players operation .t_mod temp %= 3 global
scoreboard players set .damage temp 3
execute if score .t_mod temp matches 0 as @a[tag=t_damager] run function rauch:game/mechanics/damage_target_by_self
tag @s remove t_damage_target
tag @a remove t_damager
scoreboard players reset .t_mod temp
