gamemode spectator @s
tag @s add dead
scoreboard players set @s respawntimer 0
scoreboard players reset @s stun
scoreboard players reset @s recall
scoreboard players reset @s hack
scoreboard players reset @s bolt
scoreboard players reset @s hacking
scoreboard players reset @s tank
scoreboard players reset @s tele2
scoreboard players reset @s arrowreg
scoreboard players set @s cool1 1
scoreboard players set @s cool2 1
scoreboard players set @s cool3 1
tag @s remove bolt
execute as @s[scores={bolt_hit=1..}] run function rauch:game/core/ability/class/bolt/q/remove_hit_id
execute at @s as @e[type=minecraft:armor_stand,tag=stun] if score @s pnum = @p pnum run kill @s
clear @s carrot_on_a_stick
clear @s bow
function rauch:game/core/mechanics/weapon
scoreboard players reset @s death
execute if score Global mode matches 4 run function rauch:game/capture_the_flag/flag_drop
