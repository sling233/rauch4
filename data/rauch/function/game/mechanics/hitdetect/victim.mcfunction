# gets called by enchantment after attacker
execute unless score Global game_running matches 1 run return 0
#say victim
tag @s add victim
