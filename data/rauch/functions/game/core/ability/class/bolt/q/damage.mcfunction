#say damage
execute at @s run particle minecraft:bubble_pop ~ ~1 ~ 0.2 0.4 0.1 0 40 force
execute at @s run particle minecraft:flash ~ ~2 ~ 0 0 0 1 3 force
execute at @s run summon lightning_bolt ~ ~10 ~

#scoreboard players set @s stun 20
#function rauch:game/core/mechanics/stuninit
effect give @s instant_damage 1 2

execute as @s[tag=!boltHitBy1,tag=!boltHitBy2,tag=!boltHitBy3,tag=!boltHitBy4,tag=!boltHitBy5,tag=!boltHitBy6,tag=!boltHitBy7,tag=!boltHitBy8,tag=!boltHitBy9,tag=!boltHitBy10,tag=!boltHitBy11,tag=!boltHitBy12] run effect clear @s minecraft:glowing
execute as @s[tag=!boltHitBy1,tag=!boltHitBy2,tag=!boltHitBy3,tag=!boltHitBy4,tag=!boltHitBy5,tag=!boltHitBy6,tag=!boltHitBy7,tag=!boltHitBy8,tag=!boltHitBy9,tag=!boltHitBy10,tag=!boltHitBy11,tag=!boltHitBy12] run tag @s remove bolt
