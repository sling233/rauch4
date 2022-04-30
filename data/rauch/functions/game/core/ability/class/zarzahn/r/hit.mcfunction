tag @s add hit
tag @a[dx=0,dy=0,dz=0] add hit
execute as @s[scores={pnum=1}] run tag @a[tag=hit,limit=1] add zarHook1
execute as @s[scores={pnum=2}] run tag @a[tag=hit,limit=1] add zarHook2
execute as @s[scores={pnum=3}] run tag @a[tag=hit,limit=1] add zarHook3
execute as @s[scores={pnum=4}] run tag @a[tag=hit,limit=1] add zarHook4
execute as @s[scores={pnum=5}] run tag @a[tag=hit,limit=1] add zarHook5
execute as @s[scores={pnum=6}] run tag @a[tag=hit,limit=1] add zarHook6
execute as @s[scores={pnum=7}] run tag @a[tag=hit,limit=1] add zarHook7
execute as @s[scores={pnum=8}] run tag @a[tag=hit,limit=1] add zarHook8
execute as @s[scores={pnum=9}] run tag @a[tag=hit,limit=1] add zarHook9
execute as @s[scores={pnum=10}] run tag @a[tag=hit,limit=1] add zarHook10
execute as @s[scores={pnum=11}] run tag @a[tag=hit,limit=1] add zarHook11
execute as @s[scores={pnum=12}] run tag @a[tag=hit,limit=1] add zarHook12
execute at @s run playsound minecraft:block.chain.place master @a
tag @a[tag=hit,limit=1] add zarzahn_hook
tag @a[tag=hit,limit=1] remove hit
kill @s
