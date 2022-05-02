execute as @s[scores={pnum=1}] run tag @p remove zarHook1
execute as @s[scores={pnum=2}] run tag @p remove zarHook2
execute as @s[scores={pnum=3}] run tag @p remove zarHook3
execute as @s[scores={pnum=4}] run tag @p remove zarHook4
execute as @s[scores={pnum=5}] run tag @p remove zarHook5
execute as @s[scores={pnum=6}] run tag @p remove zarHook6
execute as @s[scores={pnum=7}] run tag @p remove zarHook7
execute as @s[scores={pnum=8}] run tag @p remove zarHook8
execute as @s[scores={pnum=9}] run tag @p remove zarHook9
execute as @s[scores={pnum=10}] run tag @p remove zarHook10
execute as @s[scores={pnum=11}] run tag @p remove zarHook11
execute as @s[scores={pnum=12}] run tag @p remove zarHook12

effect clear @p minecraft:slow_falling
scoreboard players set @p stun 25
execute as @p run function rauch:game/core/mechanics/stuninit
tag @p[tag=!zarHook1,tag=!zarHook2,tag=!zarHook3,tag=!zarHook4,tag=!zarHook5,tag=!zarHook6,tag=!zarHook7,tag=!zarHook8,tag=!zarHook9,tag=!zarHook10,tag=!zarHook11,tag=!zarHook12] remove zarzahn_hook
tag @p remove temp
