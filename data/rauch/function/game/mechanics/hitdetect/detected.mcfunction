# gets called by enchantment after attacker and victim
execute unless score Global game_running matches 1 run return 0

function rauch:game/mechanics/hit
tag @a[tag=attacker] remove attacker
tag @a[tag=victim] remove victim
