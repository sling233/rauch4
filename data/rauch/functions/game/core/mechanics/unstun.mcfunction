effect clear @s weakness
execute at @s as @e[type=minecraft:armor_stand,tag=stun] if score @s pnum = @p pnum run kill @s
scoreboard players reset @s stun
