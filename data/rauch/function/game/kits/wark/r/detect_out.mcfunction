#as player out, t_wark_pnum temp has wark pnum
function rauch:game/ui/bossbar/wark/invisible
effect give @s darkness 2 0 true
scoreboard players reset @s wark_detect
#effect give @s minecraft:slowness 5 1 false
execute at @s run particle minecraft:sculk_soul ~ ~0.25 ~ 0.5 0.1 0.5 0.1 100 force
execute at @s run playsound minecraft:entity.warden.agitated master @s

# give wark reward
execute as @a if score @s pnum = t_wark_pnum temp run function rauch:game/kits/wark/r/out_wark

# important
scoreboard players set t_player_is_out temp 1