scoreboard objectives add t_steps dummy
execute at @s facing entity @e[type=marker,tag=t1] feet rotated ~ 0 positioned ^15 ^-19.9 ^6.5 run function rauch:game/mode/capture_the_flag/visual/draw_orthogonal_red
scoreboard players reset Global t_steps
execute at @s facing entity @e[type=marker,tag=t2] feet rotated ~ 0 positioned ^15 ^-19.9 ^6.5 run function rauch:game/mode/capture_the_flag/visual/draw_orthogonal_blue

scoreboard objectives remove t_steps
