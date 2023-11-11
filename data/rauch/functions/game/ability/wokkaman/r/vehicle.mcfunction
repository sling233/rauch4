execute store result storage temp pnum int 1 run scoreboard players get @s pnum
execute as @s[tag=!invert] run function rauch:game/ability/wokkaman/r/move_macro with storage temp
execute as @s[tag=invert] run function rauch:game/ability/wokkaman/r/move_inverted_macro with storage temp
