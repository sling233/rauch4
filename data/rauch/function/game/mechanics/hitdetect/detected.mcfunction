# gets called by enchantment after attacker and victim
execute unless score Global game_running matches 1 run return 0

function rauch:game/mechanics/hit
execute if entity @a[tag=victim,tag=victim_killed] run function rauch:game/mechanics/kill_new
tag @a[tag=attacker] remove attacker
tag @a[tag=victim] remove victim
tag @a[tag=victim_killed] remove victim_killed
