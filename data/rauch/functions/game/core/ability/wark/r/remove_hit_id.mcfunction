execute as @s[scores={pnum=1}] run tag @a remove wark_hitby1
execute as @s[scores={pnum=2}] run tag @a remove wark_hitby2
execute as @s[scores={pnum=3}] run tag @a remove wark_hitby3
execute as @s[scores={pnum=4}] run tag @a remove wark_hitby4
execute as @s[scores={pnum=5}] run tag @a remove wark_hitby5
execute as @s[scores={pnum=6}] run tag @a remove wark_hitby6
execute as @s[scores={pnum=7}] run tag @a remove wark_hitby7
execute as @s[scores={pnum=8}] run tag @a remove wark_hitby8
execute as @s[scores={pnum=9}] run tag @a remove wark_hitby9
execute as @s[scores={pnum=10}] run tag @a remove wark_hitby10
execute as @s[scores={pnum=11}] run tag @a remove wark_hitby11
execute as @s[scores={pnum=12}] run tag @a remove wark_hitby12
execute as @a[tag=!wark_hitby1,tag=!wark_hitby2,tag=!wark_hitby3,tag=!wark_hitby4,tag=!wark_hitby5,tag=!wark_hitby6,tag=!wark_hitby7,tag=!wark_hitby8,tag=!wark_hitby9,tag=!wark_hitby10,tag=!wark_hitby11,tag=!wark_hitby12] run function rauch:game/core/ability/wark/r/end

execute as @a unless score @s wark_hit1 matches ..-1 as @a[scores={pnum=1}] run effect clear @s minecraft:unluck
execute as @a unless score @s wark_hit2 matches ..-1 as @a[scores={pnum=2}] run effect clear @s minecraft:unluck
execute as @a unless score @s wark_hit3 matches ..-1 as @a[scores={pnum=3}] run effect clear @s minecraft:unluck
execute as @a unless score @s wark_hit4 matches ..-1 as @a[scores={pnum=4}] run effect clear @s minecraft:unluck
execute as @a unless score @s wark_hit5 matches ..-1 as @a[scores={pnum=5}] run effect clear @s minecraft:unluck
execute as @a unless score @s wark_hit6 matches ..-1 as @a[scores={pnum=6}] run effect clear @s minecraft:unluck
execute as @a unless score @s wark_hit7 matches ..-1 as @a[scores={pnum=7}] run effect clear @s minecraft:unluck
execute as @a unless score @s wark_hit8 matches ..-1 as @a[scores={pnum=8}] run effect clear @s minecraft:unluck
execute as @a unless score @s wark_hit9 matches ..-1 as @a[scores={pnum=9}] run effect clear @s minecraft:unluck
execute as @a unless score @s wark_hit10 matches ..-1 as @a[scores={pnum=10}] run effect clear @s minecraft:unluck
execute as @a unless score @s wark_hit11 matches ..-1 as @a[scores={pnum=11}] run effect clear @s minecraft:unluck
execute as @a unless score @s wark_hit12 matches ..-1 as @a[scores={pnum=12}] run effect clear @s minecraft:unluck
