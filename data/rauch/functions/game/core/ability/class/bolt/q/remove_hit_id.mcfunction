scoreboard players operation @s decode = @s bolt_hit
function rauch:game/core/mechanics/utility/decode

scoreboard players set @s bolt_hit 0
execute as @s[tag=decode1] as @a[scores={pnum=1}] run scoreboard players remove @s bolt_hitby 1
execute as @s[tag=decode2] as @a[scores={pnum=2}] run scoreboard players remove @s bolt_hitby 2
execute as @s[tag=decode3] as @a[scores={pnum=3}] run scoreboard players remove @s bolt_hitby 4
execute as @s[tag=decode4] as @a[scores={pnum=4}] run scoreboard players remove @s bolt_hitby 8
execute as @s[tag=decode5] as @a[scores={pnum=5}] run scoreboard players remove @s bolt_hitby 16
execute as @s[tag=decode6] as @a[scores={pnum=6}] run scoreboard players remove @s bolt_hitby 32
execute as @s[tag=decode7] as @a[scores={pnum=7}] run scoreboard players remove @s bolt_hitby 64
execute as @s[tag=decode8] as @a[scores={pnum=8}] run scoreboard players remove @s bolt_hitby 128
execute as @s[tag=decode9] as @a[scores={pnum=9}] run scoreboard players remove @s bolt_hitby 256
execute as @s[tag=decode10] as @a[scores={pnum=10}] run scoreboard players remove @s bolt_hitby 512
execute as @s[tag=decode11] as @a[scores={pnum=11}] run scoreboard players remove @s bolt_hitby 1024
execute as @s[tag=decode12] as @a[scores={pnum=12}] run scoreboard players remove @s bolt_hitby 2048

function rauch:game/core/mechanics/utility/decode_reset
scoreboard players reset @s bolt_hit
