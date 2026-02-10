# gets called by enchantment after attacker and victim
execute unless score Global game_running matches 1 run return 0

execute unless entity @a[tag=victim] run return run tag @s remove attacker

function rauch:game/mechanics/hit
tag @s remove attacker
