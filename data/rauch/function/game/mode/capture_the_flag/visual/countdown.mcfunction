scoreboard objectives add mod20 dummy
scoreboard players operation Global mod20 = Global ctf_time
scoreboard players operation Global mod20 %= Global 20
execute if score Global mod20 matches 0 run function rauch:game/mode/capture_the_flag/visual/countdown_title
scoreboard objectives remove mod20
