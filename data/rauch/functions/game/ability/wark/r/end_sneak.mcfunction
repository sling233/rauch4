tellraw @s {"text":"You stopped sneaking, thus interrupting your focus","color":"red"}
execute at @s run playsound minecraft:entity.allay.item_taken master @s
effect clear @s minecraft:glowing
execute as @s[scores={pnum=1}] as @a[tag=wark_hitby1] run function rauch:game/ability/wark/r/end_sneak/1
execute as @s[scores={pnum=2}] as @a[tag=wark_hitby2] run function rauch:game/ability/wark/r/end_sneak/2
execute as @s[scores={pnum=3}] as @a[tag=wark_hitby3] run function rauch:game/ability/wark/r/end_sneak/3
execute as @s[scores={pnum=4}] as @a[tag=wark_hitby4] run function rauch:game/ability/wark/r/end_sneak/4
execute as @s[scores={pnum=5}] as @a[tag=wark_hitby5] run function rauch:game/ability/wark/r/end_sneak/5
execute as @s[scores={pnum=6}] as @a[tag=wark_hitby6] run function rauch:game/ability/wark/r/end_sneak/6
execute as @s[scores={pnum=7}] as @a[tag=wark_hitby7] run function rauch:game/ability/wark/r/end_sneak/7
execute as @s[scores={pnum=8}] as @a[tag=wark_hitby8] run function rauch:game/ability/wark/r/end_sneak/8
execute as @s[scores={pnum=9}] as @a[tag=wark_hitby9] run function rauch:game/ability/wark/r/end_sneak/9
execute as @s[scores={pnum=10}] as @a[tag=wark_hitby10] run function rauch:game/ability/wark/r/end_sneak/10
execute as @s[scores={pnum=11}] as @a[tag=wark_hitby11] run function rauch:game/ability/wark/r/end_sneak/11
execute as @s[scores={pnum=12}] as @a[tag=wark_hitby12] run function rauch:game/ability/wark/r/end_sneak/12