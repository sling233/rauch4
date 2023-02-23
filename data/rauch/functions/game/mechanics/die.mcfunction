gamemode spectator @s
tag @s add dead

scoreboard players set @s respawn 0
function rauch:game/ui/bossbar/allinvisible
# respawn visible wenn mode nicht deathmatch oder testing mode ist
execute unless score Global mode matches 0 unless score Global mode matches 3 run function rauch:game/ui/bossbar/respawn/visible


scoreboard players reset @s stun
scoreboard players reset @s hack
scoreboard players reset @s bolt
scoreboard players reset @s boltdmg
scoreboard players reset @s raucherdmg
scoreboard players reset @s tank_resistance
scoreboard players reset @s tank
scoreboard players reset @s tele2
scoreboard players reset @s teleweak
scoreboard players reset @s arrowreg
scoreboard players reset @s zarzahn_f
scoreboard players reset @s wark_r
scoreboard players reset @s wark1
scoreboard players reset @s wark2
scoreboard players reset @s wark3
scoreboard players reset @s wark4
scoreboard players reset @s wark5
scoreboard players reset @s wark6
scoreboard players reset @s wark7
scoreboard players reset @s wark8
scoreboard players reset @s wark9
scoreboard players reset @s wark10
scoreboard players reset @s wark11
scoreboard players reset @s wark12
scoreboard players set @s cool1 1
scoreboard players set @s cool2 1
scoreboard players set @s cool3 1
execute as @s[scores={kit=3}] run scoreboard players operation @s projectileRNum = @s projectileRMax
function rauch:game/mechanics/dmg_queue/clear_my_queue
execute as @s[scores={kit=1}] run function rauch:game/ability/bolt/q/clear_hit_list
execute as @s[scores={kit=5}] run function rauch:game/ability/wark/r/remove_hit_id
execute as @s[scores={kit=2}] run function rauch:game/ability/zarzahn/r/hook_remove
tag @s remove flyer_dmg_schedule
scoreboard players reset @s raucher_debuff
scoreboard players reset @s raucher_control
tag @s remove wark_hitby1
tag @s remove wark_hitby2
tag @s remove wark_hitby3
tag @s remove wark_hitby4
tag @s remove wark_hitby5
tag @s remove wark_hitby6
tag @s remove wark_hitby7
tag @s remove wark_hitby8
tag @s remove wark_hitby9
tag @s remove wark_hitby10
tag @s remove wark_hitby11
tag @s remove wark_hitby12
execute at @s as @e[type=minecraft:armor_stand,tag=stun] if score @s pnum = @p pnum run kill @s
clear @s carrot_on_a_stick
clear @s bow
function rauch:game/mechanics/weapon
function rauch:game/mechanics/armor
scoreboard players reset @s death
execute if score Global mode matches 4 as @s[tag=flagPickedUp] run function rauch:game/mode/capture_the_flag/flag_drop
execute if score Global mode matches 2 as @s[team=Red] run scoreboard players add Global killNumBlue 1
execute if score Global mode matches 2 as @s[team=Blue] run scoreboard players add Global killNumRed 1
