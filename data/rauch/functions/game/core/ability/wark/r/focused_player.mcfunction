scoreboard players remove @s wark_r 1
function rauch:game/core/ui/bossbar/wark_r/update
execute as @s[scores={hitPnum=1..}] run function rauch:game/core/ability/wark/r/hit_wark/hit_someone

scoreboard players set @s 20 20
scoreboard players operation @s 10 = @s wark_r
scoreboard players operation @s 10 %= @s 20
execute if score @s 10 matches 0 run effect give @s minecraft:instant_damage 1 0 true

execute as @s[tag=wark_hitby1] as @a[scores={pnum=1},predicate=!rauch:sneak] run function rauch:game/core/ability/wark/r/end_sneak
execute as @s[tag=wark_hitby2] as @a[scores={pnum=2},predicate=!rauch:sneak] run function rauch:game/core/ability/wark/r/end_sneak
execute as @s[tag=wark_hitby3] as @a[scores={pnum=3},predicate=!rauch:sneak] run function rauch:game/core/ability/wark/r/end_sneak
execute as @s[tag=wark_hitby4] as @a[scores={pnum=4},predicate=!rauch:sneak] run function rauch:game/core/ability/wark/r/end_sneak
execute as @s[tag=wark_hitby5] as @a[scores={pnum=5},predicate=!rauch:sneak] run function rauch:game/core/ability/wark/r/end_sneak
execute as @s[tag=wark_hitby6] as @a[scores={pnum=6},predicate=!rauch:sneak] run function rauch:game/core/ability/wark/r/end_sneak
execute as @s[tag=wark_hitby7] as @a[scores={pnum=7},predicate=!rauch:sneak] run function rauch:game/core/ability/wark/r/end_sneak
execute as @s[tag=wark_hitby8] as @a[scores={pnum=8},predicate=!rauch:sneak] run function rauch:game/core/ability/wark/r/end_sneak
execute as @s[tag=wark_hitby9] as @a[scores={pnum=9},predicate=!rauch:sneak] run function rauch:game/core/ability/wark/r/end_sneak
execute as @s[tag=wark_hitby10] as @a[scores={pnum=10},predicate=!rauch:sneak] run function rauch:game/core/ability/wark/r/end_sneak
execute as @s[tag=wark_hitby11] as @a[scores={pnum=11},predicate=!rauch:sneak] run function rauch:game/core/ability/wark/r/end_sneak
execute as @s[tag=wark_hitby12] as @a[scores={pnum=12},predicate=!rauch:sneak] run function rauch:game/core/ability/wark/r/end_sneak

execute as @s[scores={wark_r=0}] run effect give @s minecraft:instant_damage 1 2 true
execute as @s[scores={wark_r=..0}] run function rauch:game/core/ability/wark/r/end_death
