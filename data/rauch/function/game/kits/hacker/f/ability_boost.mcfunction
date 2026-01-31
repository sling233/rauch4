scoreboard players remove @s hacker_ability 1
execute at @s run particle minecraft:composter ~ ~1 ~ 0.3 0.5 0.3 1 15 force
execute at @s[scores={hacker_ability=14}] run playsound minecraft:block.brewing_stand.brew master @s

scoreboard players remove @s[scores={cool1=1..}] cool1 19
scoreboard players remove @s[scores={cool2=1..}] cool2 19
scoreboard players remove @s[scores={cool3=1..}] cool3 19

scoreboard players reset @s[scores={hacker_ability=..0}] hacker_ability
