# as player that is being stepped on
scoreboard players set @s stun 10
execute at @s[team=Red] positioned ~-1 ~ ~-1 as @a[tag=game,tag=!dead,team=Blue,dx=2,dz=2,dy=5] run tag @s add t_damager
execute at @s[team=Blue] positioned ~-1 ~ ~-1 as @a[tag=game,tag=!dead,team=Red,dx=2,dz=2,dy=5] run tag @s add t_damager
execute at @s unless block ~ ~-0.4 ~ #minecraft:nonsolid run return run function rauch:game/kits/wokkaman/sq/floor_reached
execute unless entity @a[tag=t_damager] run return run function rauch:game/kits/wokkaman/sq/un_step_on

scoreboard players operation t_pnum temp = @s pnum
execute as @e[type=armor_stand,tag=stun] if score @s pnum = t_pnum temp at @s run tp @s ~ ~-0.4 ~
execute as @e[type=block_display,tag=wok_sq_vehicle] if score @s pnum = t_pnum temp run tag @s add t_vehicle
scoreboard players reset t_pnum temp
execute unless entity @e[type=block_display,tag=t_vehicle] run return run function rauch:game/kits/wokkaman/sq/un_step_on

execute at @s run tp @e[type=block_display,tag=wok_sq_vehicle,tag=t_vehicle] ~ ~2.4 ~
execute as @e[type=block_display,tag=wok_sq_vehicle,tag=t_vehicle] at @a[tag=game] if score @s wokkaman_weapon = @p pnum run ride @p mount @s
tag @e[type=block_display,tag=wok_sq_vehicle,tag=t_vehicle] remove t_vehicle


scoreboard players set 2 const 2
tag @s add t_damage_target
execute store result score t_mod temp run time query gametime
scoreboard players operation t_mod temp %= 2 const
scoreboard players set t_damage temp 4
execute if score t_mod temp matches 0 as @a[tag=t_damager] run function rauch:game/mechanics/damage_target_by_self
execute if score t_mod temp matches 0 at @s run particle minecraft:firework ~ ~ ~ 0.2 0.2 0.2 0.3 20 force
execute if score t_mod temp matches 0 at @s run particle minecraft:cherry_leaves ~ ~1 ~ 0.3 0.3 0.3 1 20 force
execute if score t_mod temp matches 0 at @s run particle minecraft:flash{color:[1,1,1,1]} ~ ~ ~ 0 0 0 1 1 force

scoreboard players reset t_mod temp
tag @s remove t_damage_target
tag @a remove t_damager
