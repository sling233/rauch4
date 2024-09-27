particle minecraft:dust{color:[1.0,0.2,0.2],scale:0.4} ~ ~ ~ 0.1 0.1 0.1 0 1 force
scoreboard players add t_steps temp 1
execute if score t_steps temp matches ..60 positioned ^-0.5 ^ ^ run function rauch:game/mode/capture_the_flag/visual/draw_orthogonal_red
