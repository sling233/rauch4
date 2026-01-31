#teleweak
attribute @s minecraft:attack_damage modifier remove teleweak
#pikkafast
attribute @s minecraft:attack_damage modifier remove flyer_fast
attribute @s minecraft:entity_interaction_range modifier remove flyer_fast_range
#boltbuff
attribute @s minecraft:attack_damage modifier remove boltdmg
#raucherdmg
function rauch:game/kits/raucher/q/remove_buff
#wark buff
attribute @s minecraft:attack_damage modifier remove warkbuff
#tankkb
function rauch:game/kits/tank/q/remove_buff
#kbfix
attribute @s minecraft:knockback_resistance modifier remove kbfix
#armorfix
attribute @s minecraft:armor modifier remove armorfix

attribute @s minecraft:max_health base reset
attribute @s minecraft:attack_damage base reset
attribute @s minecraft:scale base reset
attribute @s minecraft:movement_speed base reset
attribute @s minecraft:entity_interaction_range base reset
attribute @s minecraft:block_interaction_range base reset

clear @s minecraft:elytra
#kill @s
title @s times 10 30 10
scoreboard players reset @s bolt
scoreboard players reset @s boltdmg
scoreboard players reset @s leave
scoreboard players reset @s death
scoreboard players reset @s stats_g_damage_d
scoreboard players reset @s stats_g_damage_t
scoreboard players reset @s stats_g_deaths
scoreboard players reset @s stats_g_kills
scoreboard players reset @s hack
scoreboard players reset @s heal
scoreboard players reset @s respawn
scoreboard players reset @s stun
scoreboard players reset @s pnum
scoreboard players reset @s tele2
scoreboard players reset @s teleweak
scoreboard players reset @s hacker_damage_timer
scoreboard players reset @s zarzahn_f
scoreboard players reset @s zarzahn_hooking
#scoreboard players reset @s wark_charge
scoreboard players reset @s wark_detect
scoreboard players reset @s wark_startup
scoreboard players reset @s wark_buff
scoreboard players reset @s wokkaman_helmet
scoreboard players reset @s wokkaman_weapon
execute as @s[scores={kit=9}] run scoreboard players set @s kit 1
tag @s remove game
tag @s remove dead
tag @s remove zarzahn_hook
tag @s remove wok_hook
tag @s remove flying
tag @s remove fast
tag @s remove allow_cancel
tag @s remove flyer_q_ground
tag @s remove flagPickedUp
tag @s remove wokkaman
tag @s remove wok_f_air
tag @s remove wok_stomp_search
tag @s remove can_be_launched
effect clear @s
team leave @s
#clear @s

# join_lobby also clears items. clearing in this tick led to minecraft not liking me in the past, let's see what happens this time
function rauch:lobby/join_lobby
function rauch:lobby/tp_to_lobby

#advancement revoke @s only rauch:firstjoin


execute if score %enable_delayed_clear global matches 1 run tag @s add clear
#title @s subtitle {"text":""}
#title @s clear
#tag @s add lobby
#gamemode adventure @s
