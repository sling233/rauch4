#say hit
scoreboard players operation @s decode = @s bolt_hit
scoreboard players operation @s 0 = @s bolt_hit
function rauch:game/core/mechanics/utility/decode

scoreboard players operation @s decode = @p pnum
execute as @s[scores={decode=1}] as @s[tag=!decode1] run scoreboard players add @s bolt_hit 1
execute as @s[scores={decode=1}] as @s[tag=!decode1] at @s as @a[scores={pnum=1}] run function rauch:game/core/ability/class/bolt/q/hitby
execute as @s[scores={decode=2}] as @s[tag=!decode2] run scoreboard players add @s bolt_hit 2
execute as @s[scores={decode=2}] as @s[tag=!decode2] at @s as @a[scores={pnum=2}] run function rauch:game/core/ability/class/bolt/q/hitby
execute as @s[scores={decode=3}] as @s[tag=!decode3] run scoreboard players add @s bolt_hit 4
execute as @s[scores={decode=3}] as @s[tag=!decode3] at @s as @a[scores={pnum=3}] run function rauch:game/core/ability/class/bolt/q/hitby
execute as @s[scores={decode=4}] as @s[tag=!decode4] run scoreboard players add @s bolt_hit 8
execute as @s[scores={decode=4}] as @s[tag=!decode4] at @s as @a[scores={pnum=4}] run function rauch:game/core/ability/class/bolt/q/hitby
execute as @s[scores={decode=5}] as @s[tag=!decode5] run scoreboard players add @s bolt_hit 16
execute as @s[scores={decode=5}] as @s[tag=!decode5] at @s as @a[scores={pnum=5}] run function rauch:game/core/ability/class/bolt/q/hitby
execute as @s[scores={decode=6}] as @s[tag=!decode6] run scoreboard players add @s bolt_hit 32
execute as @s[scores={decode=6}] as @s[tag=!decode6] at @s as @a[scores={pnum=6}] run function rauch:game/core/ability/class/bolt/q/hitby
execute as @s[scores={decode=7}] as @s[tag=!decode7] run scoreboard players add @s bolt_hit 64
execute as @s[scores={decode=7}] as @s[tag=!decode7] at @s as @a[scores={pnum=7}] run function rauch:game/core/ability/class/bolt/q/hitby
execute as @s[scores={decode=8}] as @s[tag=!decode8] run scoreboard players add @s bolt_hit 128
execute as @s[scores={decode=8}] as @s[tag=!decode8] at @s as @a[scores={pnum=8}] run function rauch:game/core/ability/class/bolt/q/hitby
execute as @s[scores={decode=9}] as @s[tag=!decode9] run scoreboard players add @s bolt_hit 256
execute as @s[scores={decode=9}] as @s[tag=!decode9] at @s as @a[scores={pnum=9}] run function rauch:game/core/ability/class/bolt/q/hitby
execute as @s[scores={decode=10}] as @s[tag=!decode10] run scoreboard players add @s bolt_hit 512
execute as @s[scores={decode=10}] as @s[tag=!decode10] at @s as @a[scores={pnum=10}] run function rauch:game/core/ability/class/bolt/q/hitby
execute as @s[scores={decode=11}] as @s[tag=!decode11] run scoreboard players add @s bolt_hit 1024
execute as @s[scores={decode=11}] as @s[tag=!decode11] at @s as @a[scores={pnum=11}] run function rauch:game/core/ability/class/bolt/q/hitby
execute as @s[scores={decode=12}] as @s[tag=!decode12] run scoreboard players add @s bolt_hit 2048
execute as @s[scores={decode=12}] as @s[tag=!decode12] at @s as @a[scores={pnum=12}] run function rauch:game/core/ability/class/bolt/q/hitby

execute as @s[tag=decodeerror] run scoreboard players reset @s bolt_hit
function rauch:game/core/mechanics/utility/decode_reset

execute unless score @s bolt_hit = @s 0 run playsound minecraft:entity.arrow.hit_player master @s
