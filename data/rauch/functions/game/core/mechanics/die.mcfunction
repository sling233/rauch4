gamemode spectator @s
tag @s add dead

scoreboard players set @s respawn 0
function rauch:game/core/ui/bossbar/allinvisible
# respawn visible wenn mode nicht deathmatch oder testing mode ist
execute unless score Global mode matches 0 unless score Global mode matches 3 run function rauch:game/core/ui/bossbar/respawn/visible

scoreboard players reset @s stun
scoreboard players reset @s hack
scoreboard players reset @s bolt
scoreboard players reset @s boltdmg
scoreboard players reset @s raucherdmg
scoreboard players reset @s tank_resistance
scoreboard players reset @s tank
scoreboard players reset @s tele2
scoreboard players reset @s arrowreg
scoreboard players reset @s zarzahn_f
scoreboard players set @s cool1 1
scoreboard players set @s cool2 1
scoreboard players set @s cool3 1
execute as @s[scores={kit=1}] run function rauch:game/core/ability/bolt/q/remove_hit_id
execute as @s[scores={kit=2}] run function rauch:game/core/ability/zarzahn/r/hook_remove
tag @s remove bolt
tag @s remove boltHitBy1
tag @s remove boltHitBy2
tag @s remove boltHitBy3
tag @s remove boltHitBy4
tag @s remove boltHitBy5
tag @s remove boltHitBy6
tag @s remove boltHitBy7
tag @s remove boltHitBy8
tag @s remove boltHitBy9
tag @s remove boltHitBy10
tag @s remove boltHitBy11
tag @s remove boltHitBy12
execute at @s as @e[type=minecraft:armor_stand,tag=stun] if score @s pnum = @p pnum run kill @s
clear @s carrot_on_a_stick
clear @s bow
function rauch:game/core/mechanics/weapon
scoreboard players reset @s death
execute if score Global mode matches 4 run function rauch:game/capture_the_flag/flag_drop
