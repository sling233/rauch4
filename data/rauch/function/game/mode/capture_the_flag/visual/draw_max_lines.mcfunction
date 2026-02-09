execute at @s facing entity @e[type=marker,tag=maxline,tag=red] feet rotated ~ 0 positioned ^15 ^0.1 ^6.5 run function rauch:game/mode/capture_the_flag/visual/draw_orthogonal_red
scoreboard players reset t_steps temp
execute at @s facing entity @e[type=marker,tag=maxline,tag=blue] feet rotated ~ 0 positioned ^15 ^0.1 ^6.5 run function rauch:game/mode/capture_the_flag/visual/draw_orthogonal_blue

scoreboard players reset t_steps temp
