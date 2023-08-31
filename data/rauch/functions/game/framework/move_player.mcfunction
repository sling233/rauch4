#teleweak
attribute @s minecraft:generic.attack_damage modifier remove 0-0-0-0-1
#pikkafast
attribute @s minecraft:generic.attack_damage modifier remove 0-0-0-0-3
#boltbuff
attribute @s minecraft:generic.attack_damage modifier remove 0-0-0-0-4
attribute @s minecraft:generic.attack_damage modifier remove 0-0-0-0-5
attribute @s minecraft:generic.attack_damage modifier remove 0-0-0-0-6
attribute @s minecraft:generic.attack_damage modifier remove 0-0-0-0-7
attribute @s minecraft:generic.attack_damage modifier remove 0-0-0-0-8
attribute @s minecraft:generic.attack_damage modifier remove 0-0-0-0-9
#raucherdmg
function rauch:game/ability/raucher/q/remove_buff
#wark buff
attribute @s minecraft:generic.attack_damage modifier remove 0-0-0-0-11
#kbfix
attribute @s minecraft:generic.knockback_resistance modifier remove 0-0-0-2-0
#tankkb
function rauch:game/ability/tank/q/remove_buff
#armorfix
attribute @s minecraft:generic.armor modifier remove 0-0-0-1-0

attribute @s minecraft:generic.max_health base set 20
attribute @s minecraft:generic.attack_damage base set 1

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
scoreboard players reset @s respawn
scoreboard players reset @s raucher_debuff
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
tag @s remove game
tag @s remove dead
tag @s remove zarzahn_hook
tag @s remove flying
tag @s remove fast
tag @s remove allow_cancel
tag @s remove flyer_q_ground
tag @s remove flagPickedUp
effect clear @s
team leave @s
#clear @s
# this will remove the firstjoin advancement, which will automatically moves the player to the lobby the next tick
advancement revoke @s only rauch:firstjoin

tag @s add clear
schedule function rauch:game/framework/clear 10t
#title @s subtitle {"text":""}
#title @s clear
#tag @s add lobby
#gamemode adventure @s
#execute at @e[type=armor_stand,tag=main,limit=1] run tp @s ~ ~-20 ~
#execute at @e[type=armor_stand,tag=main,limit=1] run spawnpoint @s ~ ~-20 ~
