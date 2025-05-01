#gets called by enchantment
# immediatley after, it calls victim on the victimd
# then it calls detected as the attacker again
execute unless score Global game_running matches 1 run return 0
#say attacker
tag @s add attacker
