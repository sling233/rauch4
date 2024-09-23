scoreboard players set 20 const 20
scoreboard players operation t_mod20 temp = Global ctf_time
scoreboard players operation t_mod20 temp %= 20 const
execute if score t_mod20 temp matches 0 run function rauch:game/mode/capture_the_flag/visual/countdown_title


scoreboard players reset t_mod20 temp
