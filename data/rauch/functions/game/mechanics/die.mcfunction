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
scoreboard players reset @s hacker_damage_timer
scoreboard players reset @s raucherdmg
scoreboard players reset @s raucherdmg_num
scoreboard players reset @s tank_resistance
scoreboard players reset @s tank_resistance_num
scoreboard players reset @s tele2
scoreboard players reset @s teleweak
scoreboard players reset @s zarzahn_f
scoreboard players set @s cool1 1
scoreboard players set @s cool2 1
scoreboard players set @s cool3 1
scoreboard players set @s armor_target 20
execute as @s[scores={kit=3}] run scoreboard players operation @s projectileRNum = @s projectileRMax
execute as @s[scores={kit=1}] run function rauch:game/ability/bolt/q/clear_hit_list
#execute as @s[scores={kit=4}] run function rauch:game/ability/hacker/r/clear_my_tag_list
#execute as @s[scores={kit=4}] run function rauch:game/ability/hacker/q/clear_my_tag_list
execute as @s[scores={kit=5}] run function rauch:game/ability/wark/r/remove_my_trap
execute as @s[scores={kit=2,zarzahn_hooking=0..}] run function rauch:game/ability/zarzahn/r/cancel_hook_zar

execute as @s[tag=zarzahn_hook] run function rauch:game/ability/zarzahn/r/cancel_hook
# check if @s was tagged by a hacker (got_reawrd is so the hacker doesn't get 2 charges if r and q tagged @s when he died)
scoreboard objectives add got_reward dummy
function rauch:game/ability/hacker/r/array/check_me
function rauch:game/ability/hacker/q/array/check_me
scoreboard objectives remove got_reward

scoreboard players reset @s raucher_debuff
tag @s remove raucher_control
execute at @s as @e[type=minecraft:armor_stand,tag=stun] if score @s pnum = @p pnum run kill @s
clear @s carrot_on_a_stick
scoreboard players reset @s death
execute if score Global mode matches 4 as @s[tag=flagPickedUp] run function rauch:game/mode/capture_the_flag/flag_drop
execute if score Global mode matches 2 as @s[team=Red] run scoreboard players add Global killNumBlue 1
execute if score Global mode matches 2 as @s[team=Blue] run scoreboard players add Global killNumRed 1
function rauch:game/mechanics/weapon
function rauch:game/mechanics/armor
