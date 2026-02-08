#scoreboard players operation t_pnum temp = @s pnum
scoreboard players operation t_wark_pnum temp = @s pnum
scoreboard players operation t_trapped_pnum temp = @s wark_charge

# function sets t_player_is_out temp to 1 if ran
execute at @s as @a[distance=1.7..] if score @s pnum = t_trapped_pnum temp run function rauch:game/kits/wark/r/detect_out
execute if score t_player_is_out temp matches 1 run kill @s
scoreboard players reset t_player_is_out temp

scoreboard players reset t_trapped_pnum temp
scoreboard players reset t_wark_pnum temp
#scoreboard players reset t_pnum temp

particle minecraft:sculk_charge_pop ~0.000 ~0.100 ~1.500 0.1 0.1 0.1 0.05 1 force
particle minecraft:sculk_charge_pop ~0.312 ~0.100 ~1.467 0.1 0.1 0.1 0.05 1 force
particle minecraft:sculk_charge_pop ~0.610 ~0.100 ~1.370 0.1 0.1 0.1 0.05 1 force
particle minecraft:sculk_charge_pop ~0.882 ~0.100 ~1.214 0.1 0.1 0.1 0.05 1 force
particle minecraft:sculk_charge_pop ~1.115 ~0.100 ~1.004 0.1 0.1 0.1 0.05 1 force
particle minecraft:sculk_charge_pop ~1.299 ~0.100 ~0.750 0.1 0.1 0.1 0.05 1 force
particle minecraft:sculk_charge_pop ~1.427 ~0.100 ~0.464 0.1 0.1 0.1 0.05 1 force
particle minecraft:sculk_charge_pop ~1.492 ~0.100 ~0.157 0.1 0.1 0.1 0.05 1 force
particle minecraft:sculk_charge_pop ~1.492 ~0.100 ~-0.157 0.1 0.1 0.1 0.05 1 force
particle minecraft:sculk_charge_pop ~1.427 ~0.100 ~-0.464 0.1 0.1 0.1 0.05 1 force
particle minecraft:sculk_charge_pop ~1.299 ~0.100 ~-0.750 0.1 0.1 0.1 0.05 1 force
particle minecraft:sculk_charge_pop ~1.115 ~0.100 ~-1.004 0.1 0.1 0.1 0.05 1 force
particle minecraft:sculk_charge_pop ~0.882 ~0.100 ~-1.214 0.1 0.1 0.1 0.05 1 force
particle minecraft:sculk_charge_pop ~0.610 ~0.100 ~-1.370 0.1 0.1 0.1 0.05 1 force
particle minecraft:sculk_charge_pop ~0.312 ~0.100 ~-1.467 0.1 0.1 0.1 0.05 1 force
particle minecraft:sculk_charge_pop ~0.000 ~0.100 ~-1.500 0.1 0.1 0.1 0.05 1 force
particle minecraft:sculk_charge_pop ~-0.312 ~0.100 ~-1.467 0.1 0.1 0.1 0.05 1 force
particle minecraft:sculk_charge_pop ~-0.610 ~0.100 ~-1.370 0.1 0.1 0.1 0.05 1 force
particle minecraft:sculk_charge_pop ~-0.882 ~0.100 ~-1.214 0.1 0.1 0.1 0.05 1 force
particle minecraft:sculk_charge_pop ~-1.115 ~0.100 ~-1.004 0.1 0.1 0.1 0.05 1 force
particle minecraft:sculk_charge_pop ~-1.299 ~0.100 ~-0.750 0.1 0.1 0.1 0.05 1 force
particle minecraft:sculk_charge_pop ~-1.427 ~0.100 ~-0.464 0.1 0.1 0.1 0.05 1 force
particle minecraft:sculk_charge_pop ~-1.492 ~0.100 ~-0.157 0.1 0.1 0.1 0.05 1 force
particle minecraft:sculk_charge_pop ~-1.492 ~0.100 ~0.157 0.1 0.1 0.1 0.05 1 force
particle minecraft:sculk_charge_pop ~-1.427 ~0.100 ~0.464 0.1 0.1 0.1 0.05 1 force
particle minecraft:sculk_charge_pop ~-1.299 ~0.100 ~0.750 0.1 0.1 0.1 0.05 1 force
particle minecraft:sculk_charge_pop ~-1.115 ~0.100 ~1.004 0.1 0.1 0.1 0.05 1 force
particle minecraft:sculk_charge_pop ~-0.882 ~0.100 ~1.214 0.1 0.1 0.1 0.05 1 force
particle minecraft:sculk_charge_pop ~-0.610 ~0.100 ~1.370 0.1 0.1 0.1 0.05 1 force
particle minecraft:sculk_charge_pop ~-0.312 ~0.100 ~1.467 0.1 0.1 0.1 0.05 1 force
