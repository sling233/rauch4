particle minecraft:dust 1 0.2 0.2 0.4 ~ ~ ~ 0.1 0.1 0.1 0 1 force
scoreboard players add Global t_steps 1
execute if score Global t_steps matches ..60 positioned ^-0.5 ^ ^ run function rauch:game/mode/capture_the_flag/visual/draw_orthogonal_red
