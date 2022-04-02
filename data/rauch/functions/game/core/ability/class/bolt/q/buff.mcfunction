#say buff
scoreboard players remove @s boltdmg 1
execute at @s run particle minecraft:electric_spark ~ ~1 ~ 0.2 0.4 0.2 1 5
execute as @s[scores={boltdmg=..0}] run attribute @s minecraft:generic.attack_damage modifier remove 0-0-0-0-4
execute as @s[scores={boltdmg=..0}] run attribute @s minecraft:generic.attack_damage modifier remove 0-0-0-0-5
execute as @s[scores={boltdmg=..0}] run attribute @s minecraft:generic.attack_damage modifier remove 0-0-0-0-6
execute as @s[scores={boltdmg=..0}] run attribute @s minecraft:generic.attack_damage modifier remove 0-0-0-0-7
execute as @s[scores={boltdmg=..0}] run attribute @s minecraft:generic.attack_damage modifier remove 0-0-0-0-8
execute as @s[scores={boltdmg=..0}] run attribute @s minecraft:generic.attack_damage modifier remove 0-0-0-0-9
execute as @s[scores={boltdmg=..0}] run say end
execute as @s[scores={boltdmg=..0}] run scoreboard players reset @s boltdmg
