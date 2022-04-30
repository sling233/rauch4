execute as @s[scores={pnum=1}] run tag @a remove zarHook1
execute as @s[scores={pnum=2}] run tag @a remove zarHook2
execute as @s[scores={pnum=3}] run tag @a remove zarHook3
execute as @s[scores={pnum=4}] run tag @a remove zarHook4
execute as @s[scores={pnum=5}] run tag @a remove zarHook5
execute as @s[scores={pnum=6}] run tag @a remove zarHook6
execute as @s[scores={pnum=7}] run tag @a remove zarHook7
execute as @s[scores={pnum=8}] run tag @a remove zarHook8
execute as @s[scores={pnum=9}] run tag @a remove zarHook9
execute as @s[scores={pnum=10}] run tag @a remove zarHook10
execute as @s[scores={pnum=11}] run tag @a remove zarHook11
execute as @s[scores={pnum=12}] run tag @a remove zarHook12

effect clear @a[tag=!zarHook1,tag=!zarHook2,tag=!zarHook3,tag=!zarHook4,tag=!zarHook5,tag=!zarHook6,tag=!zarHook7,tag=!zarHook8,tag=!zarHook9,tag=!zarHook10,tag=!zarHook11,tag=!zarHook12] minecraft:slow_falling
tag @a[tag=!zarHook1,tag=!zarHook2,tag=!zarHook3,tag=!zarHook4,tag=!zarHook5,tag=!zarHook6,tag=!zarHook7,tag=!zarHook8,tag=!zarHook9,tag=!zarHook10,tag=!zarHook11,tag=!zarHook12] remove zarzahn_hook
