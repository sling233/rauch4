execute unless score @s flag_spawn_delay matches 1.. at @s positioned ~-1 ~ ~-1 as @a[tag=game,tag=!dead,dx=1,dy=2,dz=1,sort=nearest,limit=1] run function rauch:game/mode/capture_the_flag/flag_pickup
execute if score @s flag_spawn_delay matches 1.. run scoreboard players remove @s flag_spawn_delay 1
execute if score @s flag_spawn_delay matches 0 run team modify Flag color white
