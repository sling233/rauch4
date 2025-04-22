#say buff
scoreboard players remove @s boltdmg 1
execute at @s run particle minecraft:electric_spark ~ ~1 ~ 0.2 0.4 0.2 1 5
execute as @s[scores={boltdmg=..0}] run attribute @s minecraft:attack_damage modifier remove boltdmg
execute as @s[scores={boltdmg=..0}] run scoreboard players reset @s boltdmg
