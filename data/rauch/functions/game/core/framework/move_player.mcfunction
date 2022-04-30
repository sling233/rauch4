attribute @s minecraft:generic.attack_damage modifier remove 0-0-0-0-1
attribute @s minecraft:generic.attack_damage modifier remove 0-0-0-0-2
attribute @s minecraft:generic.attack_damage modifier remove 0-0-0-0-3
attribute @s minecraft:generic.attack_damage modifier remove 0-0-0-0-4
attribute @s minecraft:generic.attack_damage modifier remove 0-0-0-0-5
attribute @s minecraft:generic.attack_damage modifier remove 0-0-0-0-6
attribute @s minecraft:generic.attack_damage modifier remove 0-0-0-0-7
attribute @s minecraft:generic.attack_damage modifier remove 0-0-0-0-8
attribute @s minecraft:generic.attack_damage modifier remove 0-0-0-0-9
attribute @s minecraft:generic.knockback_resistance modifier remove 0-0-0-2-0
attribute @s minecraft:generic.armor modifier remove 0-0-0-1-0
attribute @s minecraft:generic.max_health base set 20
attribute @s minecraft:generic.attack_damage base set 1

clear @s minecraft:elytra
say clear elytra
#kill @s

scoreboard players reset @s bolt
scoreboard players reset @s boltdmg
scoreboard players reset @s leave
scoreboard players reset @s death
scoreboard players reset @s stats_g_damage_d
scoreboard players reset @s stats_g_damage_t
scoreboard players reset @s stats_g_deaths
scoreboard players reset @s stats_g_kills
scoreboard players reset @s hack
scoreboard players reset @s hacking
scoreboard players reset @s recall
scoreboard players reset @s respawntimer
scoreboard players reset @s stun
scoreboard players reset @s tank
scoreboard players reset @s pnum
scoreboard players reset @s tele2
scoreboard players reset @s teleporter_id
scoreboard players reset @s teleweak
scoreboard players reset @s zarzahn_id
tag @s remove game
tag @s remove dead
tag @s remove bolt
tag @s remove zarzahn_hook
tag @s remove flying
tag @s remove fast
tag @s remove allow_cancel
tag @s remove flyer_q_ground
tag @a remove boltHitBy1
tag @a remove boltHitBy2
tag @a remove boltHitBy3
tag @a remove boltHitBy4
tag @a remove boltHitBy5
tag @a remove boltHitBy6
tag @a remove boltHitBy7
tag @a remove boltHitBy8
tag @a remove boltHitBy9
tag @a remove boltHitBy10
tag @a remove boltHitBy11
tag @a remove boltHitBy12
effect clear @s
recipe take @s *
advancement revoke @s everything
#clear @s
tag @a add clear
schedule function rauch:game/core/framework/clear 10t
function rauch:game/core/ui/bossbar

tag @s add lobby
gamemode adventure @s
execute at @e[type=armor_stand,tag=main] run tp @s ~ ~-20 ~
execute at @e[type=armor_stand,tag=main] run spawnpoint @s ~ ~-20 ~
