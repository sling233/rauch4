scoreboard players add try_pnum temp 1

execute as @a[tag=game] if score @s pnum = try_pnum temp run function rauch:game/mode/try/find_pnum_loop