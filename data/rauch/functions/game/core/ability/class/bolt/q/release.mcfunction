scoreboard players set @s bolt 0
execute at @s[scores={pnum=1}] as @a[tag=boltHitBy1] run function rauch:game/core/ability/class/bolt/q/release_hit
execute at @s[scores={pnum=2}] as @a[tag=boltHitBy2] run function rauch:game/core/ability/class/bolt/q/release_hit
execute at @s[scores={pnum=3}] as @a[tag=boltHitBy3] run function rauch:game/core/ability/class/bolt/q/release_hit
execute at @s[scores={pnum=4}] as @a[tag=boltHitBy4] run function rauch:game/core/ability/class/bolt/q/release_hit
execute at @s[scores={pnum=5}] as @a[tag=boltHitBy5] run function rauch:game/core/ability/class/bolt/q/release_hit
execute at @s[scores={pnum=6}] as @a[tag=boltHitBy6] run function rauch:game/core/ability/class/bolt/q/release_hit
execute at @s[scores={pnum=7}] as @a[tag=boltHitBy7] run function rauch:game/core/ability/class/bolt/q/release_hit
execute at @s[scores={pnum=8}] as @a[tag=boltHitBy8] run function rauch:game/core/ability/class/bolt/q/release_hit
execute at @s[scores={pnum=9}] as @a[tag=boltHitBy9] run function rauch:game/core/ability/class/bolt/q/release_hit
execute at @s[scores={pnum=10}] as @a[tag=boltHitBy10] run function rauch:game/core/ability/class/bolt/q/release_hit
execute at @s[scores={pnum=11}] as @a[tag=boltHitBy11] run function rauch:game/core/ability/class/bolt/q/release_hit
execute at @s[scores={pnum=12}] as @a[tag=boltHitBy12] run function rauch:game/core/ability/class/bolt/q/release_hit


execute as @s[scores={bolt=0}] at @s run playsound minecraft:block.beacon.deactivate master @a
execute as @s[scores={bolt=1}] run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-4 "boltdmg1" 2.4 add
execute as @s[scores={bolt=2}] run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-5 "boltdmg2" 4.8 add
execute as @s[scores={bolt=3}] run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-6 "boltdmg3" 7.2 add
execute as @s[scores={bolt=4}] run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-7 "boltdmg4" 9.6 add
execute as @s[scores={bolt=5}] run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-8 "boltdmg5" 12 add
execute as @s[scores={bolt=6}] run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-9 "boltdmg6" 14.4 add
execute as @s[scores={bolt=6..}] run say what

execute as @s[scores={bolt=1..}] run scoreboard players set @s boltdmg 80

scoreboard players reset @s bolt
