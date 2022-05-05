tag @s add hit
execute at @s[tag=red] positioned ~-1 ~-1 ~-1 as @a[team=Blue,tag=!dead,dx=1,dy=1,dz=1,limit=1] run tag @s add temp
execute at @s[tag=blu] positioned ~-1 ~-1 ~-1 as @a[team=Red,tag=!dead,dx=1,dy=1,dz=1,limit=1] run tag @s add temp

execute as @s[scores={pnum=1}] run tag @a[tag=temp,sort=nearest,limit=1] add zarHook1
execute as @s[scores={pnum=2}] run tag @a[tag=temp,sort=nearest,limit=1] add zarHook2
execute as @s[scores={pnum=3}] run tag @a[tag=temp,sort=nearest,limit=1] add zarHook3
execute as @s[scores={pnum=4}] run tag @a[tag=temp,sort=nearest,limit=1] add zarHook4
execute as @s[scores={pnum=5}] run tag @a[tag=temp,sort=nearest,limit=1] add zarHook5
execute as @s[scores={pnum=6}] run tag @a[tag=temp,sort=nearest,limit=1] add zarHook6
execute as @s[scores={pnum=7}] run tag @a[tag=temp,sort=nearest,limit=1] add zarHook7
execute as @s[scores={pnum=8}] run tag @a[tag=temp,sort=nearest,limit=1] add zarHook8
execute as @s[scores={pnum=9}] run tag @a[tag=temp,sort=nearest,limit=1] add zarHook9
execute as @s[scores={pnum=10}] run tag @a[tag=temp,sort=nearest,limit=1] add zarHook10
execute as @s[scores={pnum=11}] run tag @a[tag=temp,sort=nearest,limit=1] add zarHook11
execute as @s[scores={pnum=12}] run tag @a[tag=temp,sort=nearest,limit=1] add zarHook12

execute as @a[tag=temp,sort=nearest,limit=1] run function rauch:game/core/ability/zarzahn/r/hit

kill @s
